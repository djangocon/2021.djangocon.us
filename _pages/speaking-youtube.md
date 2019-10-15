---
layout: default
title: Speaking Template for YouTube Videos
heading: Speaking Template for YouTube Videos
permalink: /speaking/youtube/
sitemap: false
description: Our Speaking Template for YouTube Videos (this should not be in our sitemaps file)
---

{% for post in site.schedule %}
{% capture day %}{{ post.date | date: "%A" }}{% endcapture %}
{% if day == 'Monday' or day == 'Tuesday' or day == 'Wednesday' %}
{% if post.presenters %}
{% for presenter_slug in post.presenters %}
{% assign presenter = site.presenters | where: "slug", presenter_slug | first %}
<p class="event-byline">
<h4>{{ presenter.name }}, {{ post.title }} - DjangoCon US (2019)</h4>

<textarea rows="10" id="copy{{ post.slug | replace: "-", "_" }}">
{% if presenter.twitter != blank %}{{ post.abstract }}
{% endif %}
This talk was presented at: {{ site.url }}{{ post.url }}
{% if presenter.twitter != blank or presenter.github != blank or presenter.website != blank %}
LINKS:
Follow {{ presenter.name }} 👇
{% if presenter.twitter != blank %}On Twitter: https://twitter.com/{{ presenter.twitter }}
{% endif %}{% if presenter.github != blank %}On GitHub: https://github.com/{{ presenter.github }}
{% endif %}{% if presenter.website != blank %}Official homepage: {{ presenter.website }}{% endif %}
{% endif %}
Follow DjangCon US 👇
https://twitter.com/djangocon

Follow DEFNA 👇
https://twitter.com/defnado
https://www.defna.org/

Intro music: "This Is How We Quirk It" by Avocado Junkie.
Video production by Confreaks TV.
Captions by White Coat Captioning.
</textarea>

<button class="btn border" data-clipboard-action="copy" data-clipboard-target="#copy{{ post.slug | replace: "-", "_" }}">
    Copy to clipboard
</button>
</p>

<hr>
{% endfor %}
{% endif %}
{% endif %}
{% endfor %}

<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.4/clipboard.min.js"></script>
<script>
new ClipboardJS('.btn');
</script>
