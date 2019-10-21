---
layout: default
title: Speaking Status
heading: Speaking Status
permalink: /speaking/status/
sitemap: false
description: Our Speaking Status for YouTube catching missing links
---
<table>
  <thead>
    <tr>
      <th>title</th>
      <th>name</th>
      <th>photo_url</th>
      <th>video_url</th>
      <th>github</th>
      <th>twitter</th>
      <th>website</th>
    </tr>
  </thead>
<tbody>
{% for post in site.schedule %}
{% capture day %}{{ post.date | date: "%A" }}{% endcapture %}
{% if day == 'Monday' or day == 'Tuesday' or day == 'Wednesday' %}
{% if post.presenters %}
{% for presenter_slug in post.presenters %}
{% assign presenter = site.presenters | where: "slug", presenter_slug | first %}
<tr>
  <td><a href="{{ post.url }}">{{ post.title }}</a></td>
  <td><a href="{{ presenter.permalink }}">{{ presenter.name }}</a></td>
  <td>{% if presenter.photo_url != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if post.video_url != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if presenter.github != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if presenter.twitter != blank %}✅{% else %}❌{% endif %}</td>
  <td>{% if presenter.website != blank %}✅{% else %}❌{% endif %}</td>
</tr>
{% endfor %}
{% endif %}
{% endif %}
{% endfor %}
</tbody>
</table>
