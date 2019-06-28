# Editors Guide

## Things to Know

- We use Markdown that uses [Jekyll front matter](https://jekyllrb.com/docs/frontmatter/) for most of the content of this website.
- Most of the time, you can write HTML directly into your markdown if you need to customize something.
- We support native Liquid tags.
- Unpublished work should be shared via a pull request. Feedback will be given in comments, and you can push commits to the same branch until your pull request is accepted.

## Front Matter

The front matter for pages like sponsors, blog posts, and organizers contains custom variables for each item, located between the triple-dashed lines. The values should be in quotes, example: `name: "Bugs Bunny"`. Here are a list of possibilities:

### Organizers

Organizers are stored in `_organizers`.

- **layout**: Which HTML layout from `_layouts/` this page should use. Should be `base`
- **name**: Full name as you want it to appear on the website
- **role** Your title for the conference
- **photo_url**: The path to your photo
- **github**: Your GitHub username
- **twitter**: Your Twitter handle
- **website**: The URL for your website

### Pages

Pages are stored in `_pages/` and correspond to the different HTML pages on the website, like Speaker Information and FAQs.

- **layout**: Which HTML layout from `_layouts/` this page should use. Most of the time this will be `base`
- **title**: Title of the page. Appears in the browser window.
- **heading**: Title of the page. Appears at the top of the body of the page.
- **permalink**: The URL path
- **testimonial_img**: A path to the image you want to use for the [photo hero section](https://2019.djangocon.us/styleguide/#photo-hero-section)
- **testimonial_img_mobile**: Same as **testimonial_img**, but for mobile
- **hero_text_align**: How you want the text in the photo hero to be aligned
- **hero-theme**: The [brand color](https://2019.djangocon.us/styleguide/#color-guide) you want to use for the overlay of the photo hero section (example: `brand-color1` for Brand Color 1)
- **description**: A description of this page

### Places

Places refer to the restaurants and merchants we recommend on the Venue page and are stored in `_places`.

- **layout**: Which HTML layout from `_layouts/` this page should use. Most of the time this will be `base`
- **name**: Name of the place
- **hidden**: `true` or `false` for whether we should be displaying this place
- **photo_url**: The path to the photo used to represent this place
- **location**: Street address
- **distance**: From the venue, in miles
- **map**: Link to the Google map for this place
- **website**: URL for this place's website
- **description**: A brief description of this place

### Schedule

Each session in the schedule (each talk, each breakfast slot, etc.) is stored as its own file in `_schedule/` and in the relevant subdirectory `sprints/`, `talks/`, `tutorials/`. The filename of each file follows this format: `YYYY-MM-DD-HH-II-description.md`, so breakfast on September 19, 2019 at 8:00 AM would be `2019-09-19-08-00-breakfast.md`.

This first set of front matter elements applies to all sessions, including meals and quiet rooms.

- **layout**: Which HTML layout from `_layouts/` this page should use. For schedule objects, most of the time this will be `session-details`.
- **accepted**: `true` or `false` for whether this session has been accepted and should be displayed on the website
- **category**: `talk` or `tutorial`
- **date**: Start date and time of session with the UTC offset, example `2019-09-22 8:00:00 -0500` for September 18, 2019 at 8:00 in Pacific time
- **end_date**: End date and time of session with the UTC offset
- **permalink**: The URL path for this page. Leave blank if this session (like Quiet Room) should not link to its own page
- **room**: The name of the room this session takes place in
- **sitemap**: `true` or `false` for whether this session should appear in the sitemap. `false` for most sessions.
- **title**: Title of the session

The front matter elements listed below apply to all sessions with a speaker.

- **abstract**: The abstract for the sessio
- **difficulty**: Difficulty level of the session
- **presenters**: Information about the presenters. Nested under this element are:
    - **name**: Name of presenter
    - **bio**: Bio for presenter
    - **company**: Company where presenter works
    - **photo_url**: Path to photo of presenter
    - **twitter**: Presenter's Twitter handle
    - **website**: Presenter's website
- **slides_url**: The URL for the presenter's slides
- **summary**: A summary of the talk
- **track**: The track the session is in on the schedule
- **video_url**: The URL for the video of the session

### Sponsors

Each sponsor is storted as its own file in `_sponsors/`. The filename follows this format: `YYYY-MM-DD-name.md` with the date being the date the sponsor signed their contract or paid their invoice, so sponsors are rendered in the order they sign up.

- **layout**: Which HTML layout from `_layouts/` this page should use. Most of the time this will be `base`.
- **hidden**: `true` or `false` for whether this sponsor should be hidden on the website
- **name**: Sponsor name
- **level**: What level the sponsor is sponsoring at
- **logo**: Path to the sponsor's logo
- **logo_orientation**: `landscape` or `portrait` for the orientation of the logo
- **url_target**: The full URL for the sponsor's website
- **url_friendly**: A friendlier-looking URL for the sponsor's website
- **description**: A description of the sponsor

## Markdown Basics

Below are some examples of commonly-used Markdown syntax. If you want to dive deeper, check out this [cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Here-Cheatsheet).

### Bold and Italic

*Italics*: `*asterisks*` or `_underscores_`

**Bold**: `**double asterisks**` or `__double underscores__`

### Links

[DjangoCon US 2019](https::2019.djangocon.us) - `[DjangoCon US 2019](https::2019.djangocon.us)`

### Inline Images

![Image of people](/static/img/landing-page/people.jpg)

`![Alt text for image](/path/to/img.ext)`

### Headers

```
# Header 1
## Header 2
### Header 3
#### Header 4
```

# Header 1
## Header 2
### Header 3
#### Header 4

## Liquid Tags

We support native [Liquid tags](https://shopify.github.io/liquid/). The ones you will use most often include:

### `{{ var }}`

The double-moustache indicates a variable. You can use the variables in the front matter, or variables from `_config.yml`. To use variables from `_config.yml`, prefix with `site`:

`{{ site.contact_us_email }}` will render as "hello@djangocon.us"

### `{% if %}`

If you have used Django, you'll be pleased to know the `{% if %}` tag is very similar. Example:

```
{% if sponsor.level == "Gold" %}This is a Gold sponsor{% endif %}
```

### `{% for %}`

The `{% for %}` tag also works very similarly to how it does in Django. To cycle through a collection (like all the places, for example), would look like this:

```
{% for place in site.places %}
  {{ place.name }}, {{ place.location }}
{% endfor %}
```

###  Other tags

Look into [assign](https://shopify.github.io/liquid/tags/variable/) and see it used [in the sponsors footer](https://github.com/djangocon/2019.djangocon.us/blob/develop/_includes/sponsor-footer.html#L3).

_Based on the [Editor's Guide](https://dev.to/p/editor_guide) from Dev.to._


