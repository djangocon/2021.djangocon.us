"""Iterate through our talks and announce them to discord when it's time to go see the talk.

TODO:
1. Create a separate message for 5 minutes to go that doesn't have the YouTube link
2. Update the message template to say it's starting now
3. Decide how we want to do the actual scheduling: celery? event loop like tornado? cron job?
4. Iterate over all the talks and test it in Discord
5. Delete all the announcements before we invite anyone in
6. Figure out the best way to link talk URLs to videos without putting the URLs on the public site
   before the talk is actually live
"""
from typing import Literal
from pathlib import Path
import datetime
import argparse

from dateutil.parser import parse
import frontmatter
import pytz
import requests


CONFERENCE_TZ = pytz.timezone("America/Chicago")
# That 885 number is a reference to the #live-q-and-a channel.
# You can get this ID by sending a discord message of the form "\#channel-name"
# and seeing what posts
MESSAGE_TEMPLATE = """Talk starting in 5 minutes: {post[title]} by {speaker}

Watch the talk at {timestamp:%H:%M %Z}: {video_url}

See the talk information at https://2021.djangocon.us{post[permalink]}

Live discussions are happening in <#885229363921043486>.
"""


def post_about_talks(path: Path, webhook_url: str) -> Literal[None]:
    filenames = path.glob("**/*.md")
    filenames = list(filenames)
    filenames = sorted(filenames)

    for filename in filenames:
        post = frontmatter.loads(filename.read_text())

        if isinstance(post["date"], datetime.datetime):
            timestamp = post["date"]
        else:
            timestamp = parse(post["date"])
        timestamp = timestamp.astimezone(CONFERENCE_TZ)

        video_url = "https://youtu.be/X7U-j5rZTaM"

        speakers: list[dict] = post.get("presenters", [])
        try:
            speaker = speakers[0]
        except IndexError:
            print(f"No speaker for talk {post['title']}")
            raise

        body = {
            "content": MESSAGE_TEMPLATE.format(
                post=post,
                speaker=speaker["name"],
                video_url=video_url,
                timestamp=timestamp,
            ),
            "allowed_mentions": {
                "parse": ["everyone"],
                "users": [],
            },
        }
        response = requests.post(webhook_url, json=body)
        response.raise_for_status()
        break


def parse_args():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )
    parser.add_argument('webhook_url', help='URL for the webhook to the Q & A channel')
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
    post_about_talks(args.talks_path, args.webhook_url)


if __name__ == "__main__":
    main()
