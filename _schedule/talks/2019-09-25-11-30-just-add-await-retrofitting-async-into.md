---
abstract: Writing async code from scratch is hard; trying to add it into a large,
  existing framework is harder. Learn about the problems we face trying to make Django
  async while maintaining backwards compatibility, as well as the problems maintaining
  hybrid sync-and-async Python codebases in general.
accepted: true
category: talks
date: 2019-09-25 11:30:00 -0500
difficulty: All
end_date: 2019-09-25 12:20:00 -0500
image: /static/img/social/presenters/andrew-godwin.png
layout: session-details
permalink: /talks/just-add-await-retrofitting-async-into/
presenters:
- andrew-godwin
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- deep dive
- async
- django
- python
talk_slot: full
title: 'Just Add Await: Retrofitting Async Into Django'
video_url: ''
---

The world of Python async has come a long way in recent years - networking, database connections, testing and many of the other classes of libraries now have async versions available.

With the maturing of the ASGI ecosystem - the async alternative to WSGI - the time is right for Django to finally move into the new era and start adopting asynchronous features. If you thought that writing async code from scratch was hard, though, then think about what we need to do to integrate it into a 14-year-old framework that predates even WSGI itself.

We'll first take a look at some of the common problems that writing async code has just by itself, before taking a tour through the Django request/response flow and ORM to highlight the changes that are needed and the strategies that are either planned or already implemented.

Learn about the project planning we have to do, the design decisions we have to try to adhere to, the features that we would really, really like in core Python, and how to keep backwards compatibility as we totally rebuild the core of Django.