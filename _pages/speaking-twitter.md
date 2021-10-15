---
description: Our Speaking Template for YouTube Videos (this should not be in our sitemaps
  file)
heading: Speaking Template for YouTube Videos
layout: default
permalink: /speaking/twitter/
sitemap: false
title: Speaking Template for YouTube Videos
---

{% for post in site.schedule %}
{% capture day %}{{ post.date | date: "%A" }}{% endcapture %}
{% if day == 'Friday' or day == 'Saturday' %}
{% if post.presenter_slugs and post.video_url %}
{% for presenter_slug in post.presenter_slugs %}
{% assign presenter = site.presenters | where: "slug", presenter_slug | first %}
<div class="event-byline">
<h4>{{ presenter.name }}, {{ post.title }} - {{ post.date | date: "%b %d %l:%M %p %Z" }}</h4>

{% capture twitter-copy-link %}copy-{{ post.slug | slugify }}-{{ presenter.name | slugify }}-twitter{% endcapture %}

<textarea rows="4" id="{{ twitter-copy-link }}">
{% include twitter-copy-and-paste.html post=post presenter=presenter %}
</textarea>

<button class="btn border" data-clipboard-action="copy" data-clipboard-target="#{{ twitter-copy-link }}">
Copy to clipboard
</button>
</div>

<hr>
{% endfor %}
{% endif %}
{% endif %}
{% endfor %}

<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.4/clipboard.min.js"></script>
<script>
new ClipboardJS('.btn');
</script>
