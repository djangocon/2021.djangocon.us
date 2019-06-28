---
abstract: Writing async code from scratch is hard; trying to add it into a large,
  existing framework is harder. Learn about the problems we face trying to make Django
  async while maintaining backwards compatibility, as well as the problems maintaining
  hybrid sync-and-async Python codebases in general.
accepted: true
category: talks
date: 2019-09-23 22:00
difficulty: All
layout: session-details
permalink: /talks/just-add-await-retrofitting-async-into/
presenters:
- bio: "Andrew is a long-time Django contributor - author of South, Django Migrations,
    and Channels - and a Principal Engineer at Eventbrite, leading the SRE team and
    working on system architecture.\r\n\r\nIn his spare time, he enjoys piloting light
    aircraft, archery, writing video games, and trying to see as many mountains and
    as much snow as he possibly can.\r\n"
  company: ''
  github: ''
  name: Andrew Godwin
  photo_url: ''
  twitter: andrewgodwin
  website: http://www.aeracode.org
published: true
room: ''
sitemap: true
slides_url: ''
summary: ''
tags:
- deep dive
- async
- django
- python
title: 'Just Add Await: Retrofitting Async Into Django'
track: t0
video_url: ''
---

The world of Python async has come a long way in recent years - networking, database connections, testing and many of the other classes of libraries now have async versions available.

With the maturing of the ASGI ecosystem - the async alternative to WSGI - the time is right for Django to finally move into the new era and start adopting asynchronous features. If you thought that writing async code from scratch was hard, though, then think about what we need to do to integrate it into a 14-year-old framework that predates even WSGI itself.

We'll first take a look at some of the common problems that writing async code has just by itself, before taking a tour through the Django request/response flow and ORM to highlight the changes that are needed and the strategies that are either planned or already implemented.

Learn about the project planning we have to do, the design decisions we have to try to adhere to, the features that we would really, really like in core Python, and how to keep backwards compatibility as we totally rebuild the core of Django.