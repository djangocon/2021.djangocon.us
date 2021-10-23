---
abstract: 'Many Django developers are intimidated by "modern" JavaScript, and those
  that aren''t tend to throw away much of Django and use it only as a REST API for
  a JavaScript front end.


  This talk outlines how to use Django with a modern framework like React without
  giving up Django''s View/Template system.'
accepted: true
category: talk
date: 2021-10-22 11:50:00 -0500
difficulty: Intermediate
image: /static/img/social/presenters/cory-zue.png?v=2021-10-04
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
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- Django
- frameworks
- front-end
- architecture
- javascript
talk_slot: full
title: Modern JavaScript for Django Developers
track: null
video_url: https://youtu.be/bz33cFQIC9Q
---

Is the front end of your Django project a disorganized mess? Have you ever tried to add React to a Django project and gotten discouraged because it was too complicated? Or have you worked in a project with completely separate front and back ends and wondered why you couldn't use just Django templates and forms for simple things and had to build an API for every little thing?

If so, this talk is for you.

First I cover common Django / JavaScript architectures and their tradeoffs. Including:

1. The most common "ad-hoc" approach, where JS just gets incrementally added to templates until you find yourself in a mess.
2. The completely decoupled JS front-end and Django-API back end, which is popular, but complex and unfamiliar to Django developers.
3. A "hybrid architecture", that combines modern JS with familiarity of working in Django.

The rest of the talk deep dives into building out a hybrid app with Django.

This process starts with the fundamentals of JS tooling, a prerequisite to working with modern JavaScript. I'll cover why it's so frustrating and confusing trying to add React to a Django project, then introduce the concept of a JavaScript toolchain, why you need them and what they do, and finally do a quick overview of the most common JS toolchain: NPM, Webpack, and Babel.

Finally, we'll bring it back to Django, showing how you can add a JS toolchain to a Django project and use a React application inside Django without all the complexity of managing a separate standalone front end. I'll also cover some of the common patterns that are used to interact with data, and the benefits and tradeoffs of the hybrid architecture over other models.

Along the way, I'll also touch on some of the benefits of using modern JavaScript - and hopefully convince you that it's worth it!
