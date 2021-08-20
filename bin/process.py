import frontmatter
import maya
import typer

from pathlib import Path
from slugify import slugify


def main(slug_max_length: int = 40):
    filenames = Path("_schedule").glob("**/*.md")
    filenames = list(filenames)
    filenames = sorted(filenames)

    for filename in filenames:
        try:
            dirty = False
            post = frontmatter.loads(filename.read_text())
            slug = slugify(
                post["title"], max_length=slug_max_length, word_boundary=True
            )
            date = maya.when(post["date"]).datetime(
                to_timezone="US/Central", naive=True
            )
            category = post.get("category")
            permalink = post.get("permalink")
            presenters = post.get("presenters", list())
            track = post.get("track")

            if permalink:
                permalink = "/".join(["", category, slug, ""])
                post["permalink"] = permalink
                dirty = True

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
                        presenter["layout"] = "speaker-template"  # 'presenter-details'
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

                        presenter_filename.write_text(frontmatter.dumps(presenter_post))

                    dirty = True
                    # post["presenters"] = post["presenter_slugs"]
                    # del post["presenter_slugs"]

            if post["presenter_slugs"] and len(post["presenter_slugs"]):
                presenter_slug = post["presenter_slugs"][0]
                post["image"] = f"/static/img/social/presenters/{presenter_slug}.png"

            if dirty is True:
                filename.write_text(frontmatter.dumps(post))

            if track and len(track):
                talk_filename = "-".join(
                    [
                        f"{date.year:04}",
                        f"{date.month:02}",
                        f"{date.day:02}",
                        # f"{date.hour:02}",
                        # f"{date.minute:02}",
                        # f"{track}",
                        f"{slug}.md",
                    ]
                )

            else:
                talk_filename = "-".join(
                    [
                        f"{date.year:04}",
                        f"{date.month:02}",
                        f"{date.day:02}",
                        # f"{date.hour:02}",
                        # f"{date.minute:02}",
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
    typer.run(main)
