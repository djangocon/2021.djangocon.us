---
abstract: 'Many Django developers are intimidated by "modern" JavaScript, and those
  that aren''t tend to throw away much of Django and use it only as a REST API for
  a JavaScript front end.


  This talk outlines how to use Django with a modern framework like React without
  giving up Django''s View/Template system.'
accepted: true
category: talks
date: 2021-10-22 10:00
difficulty: Intermediate
image: /static/img/social/presenters/cory-zue.png
layout: session-details
permalink: /talks/modern-javascript-for-django-developers/
presenter_slugs:
- cory-zue
presenters:
- bio: I'm a CTO-turned-solopreneur. Once the leader of a team of 30 people and the
    lead architect of the largest open-source Django project in the world, I now run
    three online businesses by myself. I believe in not over-engineering things, the
    power of passive income, and choosing your own path through life.
  company: SaaS Pegasus
  github: ''
  name: Cory Zue
  photo_url: ''
  twitter: czue
  website: https://www.coryzue.com/
published: true
room: ''
sitemap: true
slides_url: ''
summary: ''
tags:
- Django
- frameworks
- front-end
- architecture
- javascript
title: Modern JavaScript for Django Developers
track: t0
video_url: ''
---

Is the front end of your Django project a disorganized mess? Have you ever tried to add React to a Django project and gotten discouraged because it was too complicated? Or have you worked in a project with completely separate front and back ends and wondered why you couldn't use just Django templates and forms for simple things and had to build an API for every little thing?

If so, this talk is for you. It will include three high-level parts.

Part 1 is a discussion of common Django / JavaScript architectures. These include:

1. The most common "ad-hoc" approach, where JS just gets incrementally added to templates until you find yourself in a mess
2. The "completely decoupled" JS front-end and Django-API back end, which is popular, but complex and unfamiliar to pure Django developers.
3. A "hybrid architecture", that combines modern JS with familiarity of working in Django.

The rest of the talk will deep dive into building out a hybrid app with Django.

Part 2 will focus on the fundamentals of JS tooling - a prerequisite to working with modern JavaScript. I'll start with explaining why it's so frustrating and confusing trying to add React to a Django project. Then introduce the concept of a JavaScript toolchain. Why you need them and what they do. And finally do a quick overview of the most common JS toolchain: NPM, Webpack, and Babel, including what each does and the analogies in the Python world.

Part 3 brings it together with a Django example, deep diving into how you can add a JS toolchain to a DJango project and introduce a React application into a Django application without all the complexity of managing separate standalone front end. I'll also cover some of the common patterns that are used to interact with data, and the benefits and tradeoffs of the hybrid architecture over other models.

Along the way, I'll also touch on some of the benefits of using modern JavaScript - and hopefully convince you that it's worth it!