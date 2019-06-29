---
abstract: Everyone is talking about Kubernetes, but migrating existing applications
  is often easier said than done. This talk will cover the tale of migrating our main
  Django application to Kubernetes, and all the problems and solutions we ran into
  along the way.
accepted: true
category: talks
date: 2019-09-23 15:10:00 -0500
difficulty: Intermediate
end_date: 2019-09-23 15:40:00 -0500
image: /static/img/social/presenters/noah-kantrowitz.png
layout: session-details
permalink: /talks/forklifting-django-migrating-a-complex/
presenters:
- noah-kantrowitz
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- kubernetes
- docker
- containers
title: 'Forklifting Django: Migrating A Complex Django App To Kubernetes'
track: t0
video_url: ''
---

Kubernetes has rapidly become an omnipresent tool in the infrastructure world, running everything from the biggest monolith to the slightest microservices. But with power comes complexity, and Kubernetes has never been accused of being too simple or having too few moving pieces. Over about 9 months, we've moved [companyname]'s primary Django application from AWS and Ansible to Kubernetes, encountering many pitfalls along the way. This talk will show the approaches we tried, the worst of the issues we encountered, and lay out a path for migrating other Python web applications more effectively!