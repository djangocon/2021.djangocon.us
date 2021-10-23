---
abstract: Learn how the Open edX project consistently keeps 14 services spanning 100+
  code repositories and multiple organizations on actively supported Django releases!  Now
  on its 4th major Django upgrade, edX has developed an assortment of tools and processes
  to make these upgrades go faster and smoother.
accepted: true
category: talk
date: 2021-10-22 13:30:00 -0500
difficulty: All
image: /static/img/social/presenters/jeremy-bowman.png?v=2021-10-04
layout: session-details
permalink: /talks/herding-ponies-coordinating-and-django/
presenter_slugs:
- jeremy-bowman
presenters:
- bio: Jeremy has been writing code professionally using Django since 2010 and currently
    manages the Architecture team at edX.  He has been a regular at the Boston Python
    and Django meetups, and occasionally helps maintain the setuptools package.
  company: edX
  github: ''
  name: Jeremy Bowman
  photo_url: ''
  twitter: ''
  website: ''
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- Python
- Django
- tools
- best practices
talk_slot: full
title: 'Herding Ponies: Coordinating and Automating Django Upgrades Across 100+ Repositories'
track: null
video_url: https://youtu.be/ny-3AaNHbbs
---

Over the course of upgrading multiple services (including one large enough to run afoul of seemingly every backwards-incompatible change) to new Django LTS releases several times, the Open edX project has developed a set of procedures and tools to help streamline the process.  Given how useful we've found these, and how late we often see other packages tackling these upgrades, we'd like to share what we've learned about keeping up with the upgrade treadmill.  Among the topics I'll cover are:

* Code refactoring scripts (often using [Bowler](https://pybowler.io/)) to automatically fix some of the most common breaking changes
* Scripts to automatically update tox and continuous integration configurations to start testing new Django versions (and drop support for ones no longer needed)
* Scripts to track which dependencies claim to support the target release already, and manual processes to manage ones which don't use Trove classifiers correctly
* A script to analyze and summarize deprecation warnings captured by pytest
* Upgrading dependencies proactively to reduce the work needed at Django upgrade time
* How to identify difficult parts of the upgrade early enough to solve them in time
* How to handle package dependencies which don't support your target Django version by the time you need them to
* How to track and schedule all of the above across dozens of repositories

All the scripts presented here are open source; links to the code will be provided, and I'll be here for the live chat if anyone wants to help refine them further.
