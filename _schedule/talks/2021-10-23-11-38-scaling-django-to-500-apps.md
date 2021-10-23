---
abstract: Django apps are more than just a way for libraries to provide reusable functionality,
  they can be a powerful tool for separation of concerns and can help scale Django
  codebases. Techniques and experience from 500 apps and 400k lines of Python.
accepted: true
category: talk
date: 2021-10-23 11:38:00 -0500
difficulty: All
image: /static/img/social/presenters/dan-palmer.png?v=2021-10-04
layout: session-details
permalink: /talks/scaling-django-to-500-apps/
presenter_slugs:
- dan-palmer
presenters:
- bio: "I’m a software engineer living in London. I enjoy writing software to solve
    interesting problems and improving engineering culture and processes.\r\n\r\nSince
    2014 I've been an engineer at Thread working on core product features, APIs, payments,
    integration with partners, and tools. I'm currently mostly working with Python/Django,
    GraphQL APIs, and Swift on iOS."
  company: Thread https://www.thread.com/
  github: ''
  name: Dan Palmer
  photo_url: ''
  twitter: danpalmer
  website: https://danpalmer.me/
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- Python
- Django
- testing
- architecture
- back-end
- frameworks
- scaling
talk_slot: full
title: Scaling Django to 500 apps
track: null
video_url: https://youtu.be/NsHo-kThlqI
---

Have you ever...
- Felt like a Django codebase is a bit of a mess?
- Struggled to find where something happens in a codebase?
- Felt like Microservices is the only way to manage your complexity?

This talk is a tour of the techniques, conventions, and tools, that Thread uses to scale our Django codebase. These have helped us over the years to add more developers, more code, more functionality, and more frequent releases, while still being productive in one large Django codebase.

We have nearly 500 apps, around 450 models, around 400k lines of Python, and around 1000 URL patterns. We've also had many more over the past 8 years and 120k commits. Despite this, we release around 10-20 times a day with a small engineering team.

Some of the things we'll cover include:
- What goes into an app
- Structuring apps for readability
- Tools and techniques
- Issues to be aware of
- Things we got wrong when we started!
- Our wishlist for improvements to Django to better support apps

This talk is targeted at those familiar with Django concepts, but those working day to day with other engineers on a Django codebase are likely to get the most out of it.
