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

from dateutil.parser import parse
import frontmatter
import pytz
import requests
import typer


CONFERENCE_TZ = pytz.timezone("America/Chicago")
# That 885 number is a reference to the #live-q-and-a channel.
# You can get this ID by sending a discord message of the form "\#channel-name"
# and seeing what posts
MESSAGE_TEMPLATE = """Talk starting in 5 minutes: {post[title]} by {speaker}

Watch the talk at {timestamp:%H:%M %Z}: {video_url}

See the talk information at https://2021.djangocon.us{post[permalink]}

Live discussions are happening in <#885229363921043486>.
"""


app = typer.Typer(help="Awesome Announce Talks")


def post_about_talks(*, path: Path, webhook_url: str) -> Literal[None]:
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
            typer.echo(f"No speaker for talk {post['title']}")
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
        if webhook_url:
            response = requests.post(webhook_url, json=body)
            response.raise_for_status()
        else:
            typer.echo(f"{body}")
        break


@app.command()
def main(
    talks_path: Path = typer.Option(
        default="_schedule/talks/", help="Directory where talks are stored"
    ),
    webhook_url: str = typer.Option(
        default=None, help="URL for the webhook to the Q & A channel"
    ),
):
    post_about_talks(path=talks_path, webhook_url=webhook_url)


if __name__ == "__main__":
    app()
