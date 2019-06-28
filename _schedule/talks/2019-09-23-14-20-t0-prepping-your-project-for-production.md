---
abstract: 'Django does a great job following the Python aphorism:


  There should be one-- and preferably only one --obvious way to do it.


  ...until it comes to production deployment. This talk will lead users through the
  myriad of options to a production environment that is secure, stable, and easy to
  maintain.'
accepted: true
category: talks
date: 2019-09-23 14:20:00 -0500
difficulty: Intermediate
end_date: 2019-09-23 15:10:00 -0500
layout: session-details
permalink: /talks/prepping-your-project-for-production/
presenters:
- bio: "Peter is the founder of Lincoln Loop, one of the first companies to provide
    professional services for Django. He is constantly learning and is well-versed
    in many technical disciplines including devops, scaling, back-end, and front-end
    development. Peter is a frequent speaker at DjangoCon and has given talks at PyCon
    and SaltConf as well. In 2013 he co-authored the book High Performance Django,
    detailing the techniques used at Lincoln Loop to build high-traffic, scalable
    sites with Django. He has been interviewed about Lincoln Loop's remote work style
    by Wired and 37signals and been published on Forbes, FastCompany and TechRepublic
    among others.\r\n\r\nCurrently residing in Colorado, Peter enjoys a well balanced
    life with his wife and two children. Beyond technology, his passions include skiing
    and biking in the mountains near his home as well as the occasional surf trip
    south of the border."
  company: Lincoln Loop
  github: ''
  name: Peter Baumgartner
  photo_url: ''
  twitter: ipmb
  website: https://lincolnloop.com/team/peter-baumgartner/
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- deployment
title: Prepping Your Project for Production
track: t0
video_url: ''
---

Django makes it easy to run a project locally in development where you are the only user and `manage.py runserver` "just works". When you start thinking about moving that project to production and running it on the internet; it's a bit more difficult. You'll need to consider the following:

* How should I host my site (PaaS, FaaS, unmanaged hosting)?
* Should I be using Docker and/or Kubernetes?
* How do I serve my static/media assets?
* How should I handle my settings?
* Which database should I use and what are the performance considerations?
* How should I handle other supporting services (email, search, cache, etc.)
* Which web server should I use and how should I configure it?
* How do I serve my site via HTTPS?
* How do I protect my site from evil bots and blackhat hackers?

Unfortunately, the answers to these questions aren't one-size-fits-all. In this talk, I'll discuss the pros and cons of common approaches and recommend the best option for different scenarios. I'll also call out various security and performance considerations along the way.