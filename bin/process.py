import frontmatter
import inflection
import os
import typer

from datetime import datetime
from dateutil.parser import parse
from pathlib import Path
from pydantic import BaseModel, Field, ValidationError
from slugify import slugify
from typing import List, Optional
import pytz

CONFERENCE_TZ = pytz.timezone("America/Chicago")


class FrontmatterModel(BaseModel):
    """
    Our base class for our default "Frontmatter" fields.
    """

    date: Optional[str]  # TODO: Parse/fix...
    layout: str
    permalink: Optional[str]
    published: bool = True
    redirect_from: Optional[List[str]]
    redirect_to: Optional[str]  # via the jekyll-redirect-from plugin
    sitemap: Optional[bool]
    title: str

    class Config:
        extra = "allow"


class Job(FrontmatterModel):
    hidden: bool = False
    layout: str = "base"
    name: str
    title: Optional[str]
    website: str
    website_text: str = "Apply here"


class Organizer(FrontmatterModel):
    github: Optional[str]
    hidden: bool = False
    layout: str = "base"
    name: str
    photo_url: Optional[str]
    slug: Optional[str]
    title: Optional[str]
    twitter: Optional[str]
    website: Optional[str]


class Page(FrontmatterModel):
    description: Optional[str]
    heading: Optional[str]
    hero_text_align: Optional[str]  # homepage related
    hero_theme: Optional[str]  # homepage related
    layout: Optional[str]
    testimonial_img: Optional[str]  # homepage related
    testimonial_img_mobile: Optional[str]  # homepage related
    title: Optional[str]


class Post(FrontmatterModel):
    author: Optional[str] = None
    category: Optional[str] = "General"  # TODO: build a list of these
    categories: Optional[List[str]]
    date: datetime  # YYYY-MM-DD HH:MM:SS +/-TTTT
    image: Optional[str] = None
    layout: Optional[str] = "post"
    slug: Optional[str] = None
    tags: Optional[List[str]]


class Presenter(FrontmatterModel):
    company: Optional[str]
    github: Optional[str]
    hidden: bool = False
    layout: str = "speaker-template"
    name: str
    override_schedule_title: Optional[str] = None
    photo_url: Optional[str]
    role: Optional[str]
    title: Optional[str]
    twitter: Optional[str]
    website: Optional[str]
    website_text: str = "Apply here"


class Schedule(FrontmatterModel):
    abstract: Optional[str] = None
    accepted: bool = False
    category: Optional[str] = "talk"
    difficulty: Optional[str] = "All"
    image: Optional[str]
    layout: Optional[str] = "session-details"  # TODO: validate against _layouts/*.html
    presenter_slugs: Optional[List[str]] = None
    presenters: List[dict] = None  # TODO: break this into a sub-type
    published: bool = False
    room: Optional[str]
    schedule: Optional[str]
    schedule_layout: Optional[str] = Field(
        alias="schedule-layout"
    )  # TODO: Validate for breaks, lunch, etc
    show_video_urls: Optional[bool]
    slides_url: Optional[str]
    summary: Optional[str]
    tags: Optional[List[str]] = None
    talk_slot: Optional[str] = "full"
    track: Optional[str] = None
    video_url: Optional[str]


POST_TYPES = [
    {"path": "_jobs", "class_name": Job},
    {"path": "_organizers", "class_name": Organizer},
    {"path": "_pages", "class_name": Page},
    {"path": "_posts", "class_name": Post},
    {"path": "_presenters", "class_name": Presenter},
    {"path": "_schedule/talks", "class_name": Schedule},
]

app = typer.Typer()


@app.command()
def fmt():
    for post_type in POST_TYPES:
        filenames = sorted(list(Path(post_type["path"]).glob("**/*")))

        for filename in filenames:
            try:
                post = frontmatter.loads(filename.read_text())
                data = post_type["class_name"](**post.metadata)
                post.metadata.update(data.dict(exclude_unset=True))
                filename.write_text(frontmatter.dumps(post) + os.linesep)
            except ValidationError as e:
                typer.secho(f"{filename}", fg="red")
                typer.echo(e.json())
            except Exception as e:
                typer.secho(f"{filename}::{e}", fg="red")


@app.command()
def validate():
    for post_type in POST_TYPES:
        filenames = sorted(list(Path(post_type["path"]).glob("**/*")))

        for filename in filenames:
            try:
                data = frontmatter.loads(filename.read_text())
                post_type["class_name"](**data.metadata)
            except ValidationError as e:
                typer.secho(f"{filename}", fg="red")
                typer.echo(e.json())
            except Exception as e:
                typer.secho(f"{filename}::{e}", fg="red")


@app.command()
def process(process_presenters: bool = False, slug_max_length: int = 40):
    filenames = sorted(list(Path("_schedule").glob("**/*.md")))

    for filename in filenames:
        try:
            dirty = False
            post = frontmatter.loads(filename.read_text())

            # TODO: Re-enable once we know everything works...
            # data = Schedule(**post.metadata)
            # post.metadata.update(data.dict())

            slug = slugify(
                post["title"], max_length=slug_max_length, word_boundary=True
            )
            if isinstance(post["date"], str):
                # NOTE if you get weird results in 2022+ importing from papercall,
                # switch this to date = maya.when(post["date"]).datetime(
                #    to_timezone="US/Central", naive=True
                # )
                date = parse(post["date"]).astimezone(CONFERENCE_TZ)
            else:
                date = post["date"].astimezone(CONFERENCE_TZ)

            category = post.get("category")

            if category in ["break", "lunch", "social-hour"]:
                category = "talk"

            category_plural = inflection.pluralize(category)

            permalink = post.get("permalink")
            presenters = post.get("presenters", list())
            track = post.get("track")

            if permalink:
                permalink = "/".join(["", category_plural, slug, ""])
                post["permalink"] = permalink
                dirty = True

            if process_presenters:
                if presenters and len(presenters):
                    post["presenter_slugs"] = []
                    for presenter in presenters:
                        presenter = presenter.copy()
                        presenter_name = presenter.get("name")

                        if presenter_name:
                            presenter_slug = slugify(
                                presenter_name,
                                max_length=slug_max_length,
                                word_boundary=True,
                            )
                        else:
                            presenter_slug = None

                        if presenter_slug:
                            post["presenter_slugs"].append(presenter_slug)
                            presenter_post = frontmatter.loads(presenter.get("bio", ""))
                            del presenter["bio"]
                            presenter[
                                "layout"
                            ] = "speaker-template"  # 'presenter-details'
                            presenter["permalink"] = "/".join(
                                ["", "presenters", presenter_slug, ""]
                            )
                            presenter["slug"] = presenter_slug
                            presenter_post.metadata = presenter

                            presenter_filename = Path(
                                "_presenters",
                                f"{presenter_slug}.md",
                            )

                            if not presenter_filename.parent.exists():
                                presenter_filename.parent.mkdirs()

                            presenter_filename.write_text(
                                frontmatter.dumps(presenter_post)
                            )

                        dirty = True
                        # post["presenters"] = post["presenter_slugs"]
                        # del post["presenter_slugs"]

                if post["presenter_slugs"] and len(post["presenter_slugs"]):
                    presenter_slug = post["presenter_slugs"][0]
                    post[
                        "image"
                    ] = f"/static/img/social/presenters/{presenter_slug}.png"

            if dirty is True:
                filename.write_text(frontmatter.dumps(post) + "\n")

            if track and len(track):
                talk_filename = "-".join(
                    [
                        f"{date.year:04}",
                        f"{date.month:02}",
                        f"{date.day:02}",
                        f"{date.hour:02}",
                        f"{date.minute:02}",
                        f"{track}",
                        f"{slug}.md",
                    ]
                )

            else:
                talk_filename = "-".join(
                    [
                        f"{date.year:04}",
                        f"{date.month:02}",
                        f"{date.day:02}",
                        f"{date.hour:02}",
                        f"{date.minute:02}",
                        f"{slug}.md",
                    ]
                )

            target = Path(filename.parent, talk_filename)
            if not (filename.name == target.name):
                typer.echo(f"renaming {talk_filename} to {target}")
                filename.rename(target)

        except Exception as e:
            typer.secho(f"{filename}:: {e}", fg="red")


if __name__ == "__main__":
    app()
