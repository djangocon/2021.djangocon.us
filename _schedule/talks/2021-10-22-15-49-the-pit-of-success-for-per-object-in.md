---
abstract: Privacy matters, and I know I make mistakes, so I built a tool to make sure
  I don’t need to sweat about permission bugs. That tool builds per-object permissions
  right into the Django ORM. Privacy checks are conducted under the hood, automatically.
accepted: true
category: talk
date: 2021-10-22 15:49:00 -0500
difficulty: Intermediate
image: /static/img/social/presenters/madelaine-boyd.png?v=2021-10-04
layout: session-details
permalink: /talks/the-pit-of-success-for-per-object-in/
presenter_slugs:
- madelaine-boyd
presenters:
- bio: Madelaine is at bit.io building an immediately productive, shareable cloud
    database. Previously, she led a team to improve the end-to-end containerization,
    deployment, and orchestration of Facebook’s private cloud. She’s worked on everything
    from mobile infrastructure and compilers, to front-end product, even building
    software to tune, fit, and program hearing aids. Madelaine's technical accomplishment
    of which she is most proud was when she changed her job title to zalgo text and
    broke Facebook HR's data pipelines. She once won a rap battle by rhyming with
    "vim."
  company: bit.io
  github: ''
  name: Madelaine Boyd
  photo_url: ''
  twitter: madelaineboyd
  website: https://www.madelaineboyd.com/
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- Python
- Django
- ORM
- models
- permissions
- privacy
- authorization
- model managers
talk_slot: full
title: The Pit of Success for Per-Object Permissions in Django
track: null
video_url: https://youtu.be/1NGGmHZJvyU
---

Privacy is important, but permissions are hard. Even more, the Django permission framework only supports subject-verb relation guards (does *someone* have permission to *write*) but not subject-verb-object relations (does *someone* have permission to *write* in this *table*). Other existing Django middleware extensions such as django-guardian and django-rules address this, but require manual and explicit permission checking for every access.

Wouldn’t it be nice if `Model.objects.all()` automatically only returned the set of objects which the active requesting user had permission to see? Or, if you tried to save a change to a model object you’d automatically get an error if the user doesn’t have the appropriate permissions? For this purpose, I developed a tool to do all of this as an easy-to-install and configure middleware with acceptable runtime overhead. It provides security-by-design, because it automatically takes permissions into account *system-wide*. Through that, it drastically reduces the possibility of high impact bugs and declutters the code from privacy checks. In this talk, I’ll showcase how one can hook into Models, Managers and Descriptors to enable the ‘magic’ behind this framework. I’ll also discuss key performance considerations as well as our experience running it in production.
