---
layout: default
title: Speaking Template for YouTube Videos
heading: Speaking Template for YouTube Videos
permalink: /speaking/youtube/
sitemap: false
description: Our Speaking Template for YouTube Videos (this should not be in our sitemaps file)
---

{% for post in site.schedule %}
{% if post.presenters %}
{% for presenter_slug in post.presenters %}
{% assign presenter = site.presenters | where: "slug", presenter_slug | first %}
<p class="event-byline">
<h3>{{ post.title }}</h3>
<textarea rows="6" id="copy{{ post.slug | replace: "-", "_" }}">
{% if presenter.twitter != blank %}{{ post.abstract }}
{% endif %}
This talk was presented at: {{ site.url }}{{ post.url }}
{% if presenter.twitter != blank or presenter.github != blank or presenter.website != blank %}
LINKS:
Follow {{ presenter.name }} 👇
{% if presenter.twitter != blank %}https://twitter.com/{{ presenter.twitter }}
{% endif %}{% if presenter.github != blank %}https://github.com/{{ presenter.github }}
{% endif %}{% if presenter.website != blank %}{{ presenter.website }}{% endif %}
{% endif %}
Follow DjangCon US 👇
https://twitter.com/djangocon
</textarea>

<button class="btn border" data-clipboard-action="copy" data-clipboard-target="#copy{{ post.slug | replace: "-", "_" }}">
    Copy to clipboard
</button>
</p>

<hr>
{% endfor %}
{% endif %}
{% endfor %}

<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.4/clipboard.min.js"></script>
<script>
new ClipboardJS('.btn');
</script>
