---
abstract: Have you ever used Django's `prefetch_related` system?  Do you know how
  it works under the hood? In this talk, we'll take a deep-dive into `prefetch_related`
  and look at ways we can build on top of this to improve our own code!
accepted: true
category: talks
date: 2019-09-24 11:30:00 -0500
difficulty: Advanced
end_date: 2019-09-24 12:20:00 -0500
image: /static/img/social/presenters/mike-hansen.png
layout: session-details
permalink: /talks/prefetching-for-fun-and-profit/
presenters:
- mike-hansen
published: true
room: Salon F-H
sitemap: true
slides_url: ''
summary: ''
tags:
- deep dive
title: Prefetching for Fun and Profit
track: t2
video_url: ''
---

Django's `prefetch_related` system is great and makes it simple to fetch the data you need in an efficient manner.  Taking a look at how Django implements this can actually help improve your own code!

In this talk, we'll do a deep dive into Django's implementation of `prefetch_related`.  We'll then look at ways to make use of that knowledge including:

* Avoiding common pitfalls when working with prefetched data.
* Defining our own descriptors which can be prefetched.
* Composing and manipulating `prefetch_related` data