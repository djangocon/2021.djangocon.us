---
description: Our Speaking Template for YouTube Videos (this should not be in our sitemaps
  file)
heading: Speaking Template for YouTube Videos
layout: default
permalink: /speaking/youtube/
sitemap: false
title: Speaking Template for YouTube Videos
---

{% for post in site.schedule %}
<a href='{{ post.video_url }}'>For YouTube</a>{% if post.additional_video_url %}<a href='{{ post.additional_video_url }}'>Also on YouTube</a>{% endif %}
{% capture day %}{{ post.date | date: "%A" }}{% endcapture %}
{% if day == 'Friday' or day == 'Saturday' %}
{% if post.presenter_slugs %}
{% for presenter_slug in post.presenter_slugs %}
{% assign presenter = site.presenters | where: "slug", presenter_slug | first %}
<p class="event-byline">
<h4>{{ presenter.name }}, {{ post.title }} - DjangoCon US (2021)</h4>

<textarea rows="10" id="copy{{ post.slug | slugify }}-{{ presenter.name | slugify }}">
{% include youtube-copy-and-paste.html post=post presenter=presenter %}
</textarea>

<button class="btn border" data-clipboard-action="copy" data-clipboard-target="#copy{{ post.slug | slugify }}-{{ presenter.name | slugify }}">
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
