"""Iterate through our talks and announce them to discord when it's time to go see the talk.

TODO:
1. Decide how we want to do the actual scheduling: celery? event loop like tornado? cron job?
2. Iterate over all the talks and test it in Discord
3. Delete all the announcements before we invite anyone in
"""
from typing import Any, Literal
from pathlib import Path
import datetime
import json
import time

from dateutil.parser import parse
import frontmatter
import pytz
import requests
import typer


IGNORED_TALK_TYPES = ["break", "lunch"]

CONFERENCE_TZ = pytz.timezone("America/Chicago")
# That 885 number is a reference to the #live-q-and-a channel.
# You can get this ID by sending a discord message of the form "\#channel-name"
# and seeing what posts
MESSAGE_TEMPLATE = """:tada: Talk starting right _now_: **{post[title]}** by *{speaker}*

:tv: {post[video_url]}

See the talk information at https://2021.djangocon.us{post[permalink]}

Live discussions are happening in <#885229363921043486>.
"""

FIVE_MINUTE_WARNING_TEMPLATE = """:tada: Talk starting in 5 minutes: **{post[title]}** by *{speaker}*

:alarm_clock: Watch the talk at [{timestamp:%H:%M %Z}](https://time.is/compare/{timestamp:%I%M%p_%d_%B_%Y}_in_Chicago)

:tv: {post[video_url]}

See the talk information at https://2021.djangocon.us{post[permalink]}

Live discussions are happening in <#885229363921043486>.
"""

app = typer.Typer(help="Awesome Announce Talks")


def post_about_talks(*, path: Path, webhook_url: str) -> Literal[None]:
    if path.is_dir():
        filenames = path.glob("**/*.md")
        filenames = list(filenames)
        filenames = sorted(filenames)
    else:
        filenames = [path]

    for filename in filenames:
        try:
            post = frontmatter.loads(filename.read_text())

            if post["title"].strip().lower() not in IGNORED_TALK_TYPES:
                if isinstance(post["date"], datetime.datetime):
                    timestamp = post["date"]
                else:
                    timestamp = parse(post["date"])
                timestamp = timestamp.astimezone(CONFERENCE_TZ)

                speakers: list[dict] = post.get("presenters", [])
                try:
                    speaker = speakers[0]
                except (IndexError, TypeError):
                    typer.echo(f"No speaker for talk {post['title']}")
                    typer.secho(f"{filename}", fg="red")
                    break

                # TODO queue 5 minute to go message separately from this
                body = {
                    "content": MESSAGE_TEMPLATE.format(
                        post=post,
                        speaker=speaker["name"],
                        video_url=post["video_url"],
                        timestamp=timestamp,
                    ),
                    "allowed_mentions": {
                        "parse": ["everyone"],
                        "users": [],
                    },
                    # "embeds": [
                    #     {
                    #         "type": "rich",
                    #         "title": "Text",
                    #         "description": "Text description here",
                    #     },
                    #     {
                    #         "type": "image",
                    #         "title": "Author image",
                    #         "height": "400",
                    #         "width": "400",
                    #         "url": f"http://2021.djangocon.us{post['image']}",
                    #     },
                    #     {
                    #         "type": "video",
                    #         "title": "Video link",
                    #         "url": f"{post['video_url']}",
                    #     },
                    # ],
                }

                if webhook_url:
                    post_to_webhook(webhook_url=webhook_url, body=body)
                    time.sleep(30)
                else:
                    typer.echo(f"{body['content']}")
                    typer.echo(json.dumps(body, indent=2))
                    typer.secho("----" * 10, fg="yellow")

        except Exception as e:
            typer.secho(f"{filename}::{e}", fg="red")


def post_to_webhook(*, webhook_url: str, body: dict[str, Any]) -> None:
    """Post the body to the webhook URL"""
    response = requests.post(webhook_url, json=body)
    response.raise_for_status()


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
