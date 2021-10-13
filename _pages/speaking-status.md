---
description: Our Speaking Status for YouTube catching missing links
heading: Speaking Status
layout: default
permalink: /speaking/status/
published: true
sitemap: false
title: Speaking Status
---

<table>
  <thead>
    <tr>
      <th>title</th>
      <th>name</th>
      <th>photo_url</th>
      <th>github</th>
      <th>twitter</th>
      <th>website</th>
      <th>video_url</th>
      <th>slides</th>
    </tr>
  </thead>
<tbody>
{% for post in site.schedule %}
{% capture day %}{{ post.date | date: "%A" }}{% endcapture %}
{% if day == 'Friday' or day == 'Saturday' or day == 'Wednesday' %}
{% if post.presenter_slugs %}
{% for presenter_slug in post.presenter_slugs %}
{% assign presenter = site.presenters | where: "slug", presenter_slug | first %}
<tr>
  <td><a href="{{ post.url }}">{{ post.title }}</a></td>
  <td><a href="{{ presenter.permalink }}">{{ presenter.name }}</a></td>
  <td>{% if presenter.photo_url != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if presenter.github != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if presenter.twitter != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if presenter.website != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if post.video_url != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if post.slides_url != blank %}✅{% else %}❌{% endif %}</td>
</tr>
{% endfor %}
{% endif %}
{% endif %}
{% endfor %}
</tbody>
</table>
