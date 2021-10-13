"""Process the CSV files for the schedule and then update the markdown and rename the file
"""
import os
from typing import Literal, Optional, TextIO, Union
from pathlib import Path
import csv
import datetime
import argparse

from dateutil.parser import parse
import frontmatter
from slugify import slugify
import typer
import pytz

SKIP_LINES = {"UTC Offset", "Talk padding", "Track 2 offset"}
SLUG_MAX_LENGTH = 40
CONFERENCE_TZ = pytz.timezone("America/Chicago")
TIME_FORMAT = "%Y-%m-%d %H:%M:%S %z"  # 2021-10-22 10:15:00 -0500

BREAK_TEMPLATE = """---
layout: session-details
category: talk
permalink:
accepted: true
sitemap: false

title: Break

presenters:
difficulty:

date: {timestamp}
schedule-layout: full
---
Get up, stretch your legs, have a snack, etc.
"""

LUNCH_TEMPLATE = """---
layout: session-details
category: talk
permalink:
accepted: true
sitemap: false

title: Lunch

presenters:
difficulty:

date: {timestamp}
schedule-layout: full
---
Please remember to eat lunch as appropriate for your time zone and daily schedule.
"""


def read_csv(
    csv_file: TextIO, talk_date: datetime.date, path: Path
) -> dict[str, dict[str, Union[str, int, datetime.datetime]]]:
    """Read the CSV file and get the talks back"""
    csv_data = csv.DictReader(csv_file)
    result = {}
    for line in csv_data:
        if not line["Time (CDT)"] or line["Time (CDT)"] in SKIP_LINES:
            continue
        try:
            title, author = (line["Track 1"] or line["Track 2"]).split("by")
        except ValueError as exc:
            title = line["Track 1"] or line["Track 2"]
            author = ""
        finally:
            title = title.strip()
            author = author.strip()
        talk = {
            "title": title,
            "author": author,
            "track": 0 if line["Track 1"] else 1,
            "timestamp": CONFERENCE_TZ.localize(
                datetime.datetime.combine(talk_date, parse(line["Time (CDT)"]).time())
            ),
        }
        if title.casefold() == "break":
            save_break(talk["timestamp"], path)
        if title.casefold() == "lunch":
            save_lunch(talk["timestamp"], path)
        result[slugify(title, max_length=SLUG_MAX_LENGTH, word_boundary=True)] = talk
    return result


def save_break(timestamp: datetime.datetime, path: Path):
    filename = path / Path(f"{timestamp:%Y-%m-%d-%H-%M}-break.md")
    filename.write_text(
        BREAK_TEMPLATE.format(timestamp=timestamp.strftime(TIME_FORMAT))
    )


def save_lunch(timestamp: datetime.datetime, path: Path):
    filename = path / Path(f"{timestamp:%Y-%m-%d-%H-%M}-lunch.md")
    filename.write_text(
        LUNCH_TEMPLATE.format(timestamp=timestamp.strftime(TIME_FORMAT))
    )


def update_talks(
    path: Path, talks: dict[str, dict[str, Union[str, int, datetime.datetime]]]
) -> Literal[None]:
    filenames = path.glob("**/*.md")
    filenames = list(filenames)
    filenames = sorted(filenames)
    # HACK for 2021
    # normally this would be all(talk['track'] == 0 for talk in talks.values())
    single_track = True

    for filename in filenames:
        try:
            dirty = False
            post = frontmatter.loads(filename.read_text())
            if post["title"] in {"Break", "Lunch"}:
                continue

            slug = post["permalink"].split("/")[2]

            try:
                talk = talks[slug]
            except KeyError:
                typer.secho(f"Unknown talk {post['title']} (slug {slug})", fg="red")
                continue

            if post["date"] != talk["timestamp"].strftime(TIME_FORMAT):
                post["date"] = talk["timestamp"].strftime(TIME_FORMAT)
                dirty = True

            track: Optional[str] = post.get("track")
            if not single_track:
                desired_track_number: int = talk["track"]
                desired_track = None
                if desired_track_number is not None:
                    desired_track = f"t{desired_track_number}"
                if track != desired_track:
                    post["track"] = desired_track
                    dirty = True
            elif post.get("track", False) is not None:
                post["track"] = None
                dirty = True

            if dirty is True:
                filename.write_text(frontmatter.dumps(post) + os.linesep)
            if not single_track:
                talk_filename = "-".join(
                    [
                        f"{talk['timestamp'].year:04}",
                        f"{talk['timestamp'].month:02}",
                        f"{talk['timestamp'].day:02}",
                        f"{talk['timestamp'].hour:02}",
                        f"{talk['timestamp'].minute:02}",
                        f"{track}",
                        f"{slug}.md",
                    ]
                )

            else:
                talk_filename = "-".join(
                    [
                        f"{talk['timestamp'].year:04}",
                        f"{talk['timestamp'].month:02}",
                        f"{talk['timestamp'].day:02}",
                        f"{talk['timestamp'].hour:02}",
                        f"{talk['timestamp'].minute:02}",
                        f"{slug}.md",
                    ]
                )

            target = Path(filename.parent, talk_filename)
            if filename.name != target.name:
                typer.echo(f"renaming {filename} to {target}")
                filename.rename(target)
        except Exception as e:
            typer.secho(f"{filename}:: {e}", fg="red")


def parse_args():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )
    parser.add_argument(
        "--csv-file", type=argparse.FileType("r"), help="CSV file to read"
    )
    parser.add_argument("--date", type=parse, help="Date for this sheet")
    parser.add_argument(
        "--talks-path",
        type=Path,
        default="_schedule/talks/",
        help="Directory where talks are stored",
    )
    args = parser.parse_args()
    return args


def main():
    args = parse_args()
    if isinstance(args.date, datetime.datetime):
        date = args.date.date()
    else:
        date = args.date
    csv_data = read_csv(args.csv_file, date, args.talks_path)
    update_talks(args.talks_path, csv_data)


if __name__ == "__main__":
    main()
