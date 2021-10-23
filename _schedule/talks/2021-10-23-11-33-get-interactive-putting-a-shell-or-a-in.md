---
abstract: How to make your Django app speak SSH or RDP with Guacamole, ASGI and Daphne
  — giving anyone a console or a desktop right in their browser!
accepted: true
category: talk
date: 2021-10-23 11:33:00 -0500
difficulty: All
image: /static/img/social/presenters/maari-tamm.png?v=2021-10-04
layout: session-details
permalink: /talks/get-interactive-putting-a-shell-or-a-in/
presenter_slugs:
- maari-tamm
presenters:
- bio: "I am a Python developer, working in the Education team in City Network. I
    still consider myself new in this industry as I changed my career in late 2018,
    working in a medical lab before getting into coding. I am a former Outreachy intern
    and a FOSS enthusiast. \r\nBeing self-taught myself, I love being a part of providing
    online learning resources for others. \r\nOur learning platform (mentioned in
    the talk) is the [City Cloud Academy](https://academy.citycloud.com)."
  company: City Network
  github: ''
  name: Maari Tamm
  photo_url: ''
  twitter: tammmri
  website: ''
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags: []
talk_slot: full
title: Get interactive! Putting a shell (or a desktop) in your Django app
track: null
video_url: https://youtu.be/kbrHW--ZLUc
---

In our learning platform, we enable learners to interact with real-world hands-on lab environments, so that they can learn complex technologies like OpenStack, Kubernetes, Terraform, Ceph, Ansible, and others. To do that, we use [Apache Guacamole](https://guacamole.apache.org/)'s `guacd` service to provide learners with interactive shell terminals — or even full desktop environments — that run right in people's browsers, no additional software required.

The Guacamole platform is normally deployed in conjunction with [a Java servlet environment](https://guacamole.apache.org/doc/gug/guacamole-architecture.html#web-application) (commonly Apache Tomcat). But the Guacamole protocol is not tied to the Java language in any way, and a Python websocket proxy ([pyguacamole](https://pypi.org/project/pyguacamole/)) is readily available under an open source (MIT) license.

In this talk, I will discuss how we implemented a learning platform (based on [Open edX](https://open.edx.org)) that deploys an ASGI service under [Daphne](https://docs.djangoproject.com/en/3.1/howto/deployment/asgi/daphne/), uses pyguacamole to provide an asynchronous websocket connection to a Guacamole service, and thus creates a highly scalable, interactive, and immersive learning environment that helps people learn complex technology with no hardware or cloud investment at all.
