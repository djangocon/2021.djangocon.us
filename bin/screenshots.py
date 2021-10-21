import typer

from pathlib import Path
from playwright.sync_api import Playwright, sync_playwright


def run(*, playwright: Playwright, overwrite: bool) -> None:
    browser = playwright.chromium.launch(headless=True)
    context = browser.new_context()

    # Open new page
    page = context.new_page()

    presenters = Path("_presenters").glob("*.md")
    for presenter in presenters:
        filename = Path(
            "static", "img", "social", "presenters", f"{presenter.stem}.png"
        )
        if overwrite or not filename.exists():
            typer.echo(f"saving {presenter.stem}")
            page.goto(f"https://2021.djangocon.us/presenters/{presenter.stem}/")
            page.screenshot(
                path=filename,
                clip={"x": 0, "y": 0, "width": 1024, "height": 512},
            )
    context.close()
    browser.close()


def main(overwrite: bool = False):
    with sync_playwright() as playwright:
        run(playwright=playwright, overwrite=overwrite)


if __name__ == "__main__":
    typer.run(main)
