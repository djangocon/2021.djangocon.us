---
abstract: 'Django, being batteries included and all, is meant to big, clumsy, slow.
  I''m going to show you how use it as a micro-framework.

  I''ll show you how the base HTTP layer works, and what those middleware things are
  all about. I''ll show you how to customize that so that Django can keep up with
  anything.'
accepted: true
category: talks
date: 2019-09-25 14:20:00 -0500
difficulty: Intermediate
end_date: 2019-09-25 15:10:00 -0500
image: /static/img/social/presenters/carlton-gibson.png
layout: session-details
permalink: /talks/using-django-as-a-micro-framework-on-the/
presenters:
- carlton-gibson
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- deep dive
talk_slot: full
title: 'Using Django as a Micro-Framework: Hacking on the HTTP handlers and middleware
  (for fun and profit)'
video_url: ''
---

Django, being batteries included and all, is meant to big, clumsy, slow. I'm going to show you how use it as a micro-framework.

The pattern we're looking at is familiar from various places: node (and Express), closer to home with Flask, and even newfangled async players such as Starlette.

They all feature the same kind of things:

* Light-weight, probably function-based views.
* Easy URL routing.
* And _middleware_ that looks like it does magical things.

Well, in Django, we have function-based views — whether or not we we use them — but what about the rest?

> Well, `MIDDLEWARE`, yes, I've seen that — but I tend not to touch it.

And easy URL routing? It's all separate URL files and `includes`... — Django projects don't look much like a micro-framework _Hello World_.

**But it doesn't have to be that way.**

We can configure Django with a micro-framework style.

We can look at the middleware, see how they work, and how we can bend them to our will.

From there we can think about optimizing the base request handlers for our use-case, so that our Django app is as fast as we might care to need.

Big? Clumsy? Slow? Nope.

(Oh, and the batteries'll still be there if we suddenly realize we need 'em. 🙂)
