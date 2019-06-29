---
abstract: You can reuse Django templates with the `{% include %}` tag. But what if
  you need to share a template across multiple projects? Learn how we built a custom
  template loader to ship template changes — all without deploying any code.
accepted: true
category: talks
date: 2019-09-23 17:30:00 -0500
difficulty: Intermediate
end_date: 2019-09-23 18:00:00 -0500
image: /static/img/social/presenters/dane-hillard.png
layout: session-details
permalink: /talks/using-a-custom-template-loader-at-scale/
presenters:
- dane-hillard
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- Django
- python
- deep dive
title: Using a custom template loader at scale
track: t0
video_url: ''
---

## Who

This talk is for folks who would like to explore the features of custom template loaders and deliver templates at scale for big Django systems. A knowledge of Django's general model, view, template architecture and caching system will be helpful in understanding this material.

## Takeaways

* How Django's default template loading works
* How to make a custom template loader
* Considerations and an approach to delivering templates to multiple, distinct Django projects

## What

In the interest of team autonomy, we partition parts of our platform into isolated Django projects. Although this allows for independent development work, it also means that some resources that are traditionally created on a per-project basis, like globally-used templates, need to be shared across projects. A reusable Django app could normally do the trick, but we wanted to deliver template updates as instantaneously as possible.

* How Django loads templates (5 minutes)
* Anatomy of a custom template loader (5 minutes, 10 total)
* Using a custom template loader to distribute template changes (10 minutes, 20 total)
    * Building a template service
    * Building a template admin interface
    * Hooking up a template loader
    * Performance considerations
* Where to go next (5 minutes, 25 total)