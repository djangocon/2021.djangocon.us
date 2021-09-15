import pathlib

import yaml


HEADER = """---
author: Drew Winstel
category: Program
date: 2021-08-26 12:00:00
layout: post
title: Announcing the 2021 DjangoCon US Talks
---
We're proud to announce the talks for this year's online DjangoCon US.

The Django community and beyond submitted an incredible number of talk
proposals, and selecting these talks was extremely difficult for our program
team. We appreciate the effort everyone put into their submissions; thank you!
Another huge thank you to our reviewers, without whom this list would still be
weeks in the making.

We will announce the full conference schedule soon. If you haven't picked up
your ticket yet, they're still [available](https://ti.to/defna/djangocon-us-2021).
"""

FOOTER = """
Congratulations to all our speakers!

We can't wait to see you at DCUS 2021! Get your [free tickets](https://ti.to/defna/djangocon-us-2021)
today and follow us on [Twitter](https://twitter.com/djangocon) to stay up to
date on the latest news.
"""

LINE_TEMPLATE = """- {talk["title"]} by {talk["presenters"][0]["name"]} {urls}"""


def load_path(path: pathlib.Path) -> list[dict]:
    """Load the talks and return a list of dicts"""
    assert path.is_dir()
    return_data = []
    for yaml_file in sorted(path.glob("*.md")):
        with open(yaml_file, "r") as yaml_file_obj:
            yaml_data = yaml_file_obj.read()
        return_data.append(yaml.safe_load(yaml_data.split("---")[1]))
    return return_data


def generate_urls(presenter: dict[str, str]) -> str:
    urls = []
    if presenter["github"]:
        urls.append(f'[github](https://github.com/{presenter["github"]})')
    if presenter["twitter"]:
        urls.append(f'[twitter](https://twitter.com/{presenter["twitter"]})')
    if presenter["website"]:
        urls.append(f'[website]({presenter["website"]})')
    if not urls:
        return ""
    return f'({", ".join(urls)})'


def parse_talks(talks: list[dict]) -> list[str]:
    return [
        f'- {talk["title"]} by {talk["presenters"][0]["name"]} {generate_urls(talk["presenters"][0])}'
        for talk in talks
    ]


def generate_template(talk_lines: list[str]) -> str:
    joined = "\n".join(talk_lines)
    return f"{HEADER}\n\n{joined}\n\n{FOOTER}"


def main():
    path = pathlib.Path("../_schedule/talks")
    talks = load_path(path)
    talk_lines = parse_talks(talks)
    blog_post = generate_template(talk_lines)
    print(blog_post)


if __name__ == "__main__":
    main()
