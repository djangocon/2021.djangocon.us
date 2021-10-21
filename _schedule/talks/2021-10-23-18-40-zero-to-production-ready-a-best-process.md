---
abstract: You know the basics of packaging your Python application for Docker, but
  do you know enough to run that image in production? Learn an iterative, practical
  process that will help you prioritize the many best practices you'll need to implement,
  starting with security and ending with image size.
accepted: true
category: talk
date: 2021-10-23 18:40:00 -0500
difficulty: Intermediate
image: /static/img/social/presenters/itamar-turner-trauring.png?v=2021-10-04
layout: session-details
permalink: /talks/zero-to-production-ready-a-best-process/
presenter_slugs:
- itamar-turner-trauring
presenters:
- bio: "Itamar helps teams using Python ship faster code. He has been using Python
    since 1999, and worked on web applications, scientific computing, distributed
    systems, and more. His open source work includes [Fil](https://pythonspeed.com/fil),
    a memory profiler data intensive processing, and [Eliot](https://eliot.readthedocs.io),
    the causal logging library.\r\n\r\nYou can learn more about Python Docker packaging,
    performance, and optimizing memory usage at [https://pythonspeed.com](https://pythonspeed.com)."
  company: Python⇒Speed
  github: ''
  name: Itamar Turner-Trauring
  photo_url: ''
  twitter: itamarst
  website: https://pythonspeed.com
published: true
sitemap: true
slides_url: ''
summary: ''
tags:
- back-end
- best practices
- tools
talk_slot: full
title: 'Zero to production-ready: a best-practices process for Docker packaging'
track: null
video_url: https://youtu.be/zUtbwBRVZaY
---

You know the basics of packaging your Python application for Docker, but do you know enough to run that image in production? Bad packaging can result in security and production problems, not to mention wasted time try to debug unreproducible errors.

And even if you figure out the best practices, there's still a huge number of details to get right, many of which interact with each other in unexpected ways. My personal list includes over 70 Docker packaging best practices, and it keeps growing. So where do you start? What should you do first?

To help you quickly package your application in a production-ready way, this talk will give you a process to help you prioritize and iteratively implement these best practices, by starting with the highest priority best practices (security, automation), moving on the correctness and reproducibility, and finally focusing on optimizing build time and image size.
