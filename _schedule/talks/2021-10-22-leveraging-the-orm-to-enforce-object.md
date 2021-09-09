---
abstract: Django provides a robust permissions framework out of the box, but it only
  works at the model level. What if we want to apply permissions to specific objects
  based on their attributes? In NetBox, we do exactly that by leveraging the ORM,
  JSON, and database transactions.
accepted: true
category: talks
date: 2021-10-22 10:00
difficulty: Intermediate
image: /static/img/presenters/jeremy-stretch.png
layout: session-details
permalink: /talks/leveraging-the-orm-to-enforce-object/
presenter_slugs:
- jeremy-stretch
presenters:
- bio: Jeremy Stretch is the founder and lead maintainer of NetBox, an open source
    infrastructure resource modeling application. He works at NS1 as a distinguished
    engineer spearheading integration and development efforts around NetBox. He lives
    in the Raleigh, North Carolina area with his wife and three children.
  company: NS1
  github: jeremystretch
  name: Jeremy Stretch
  photo_url: /static/img/presenters/jeremy-stretch.jpg
  twitter: jstretch85
  website: ''
published: true
room: ''
sitemap: true
slides_url: ''
summary: ''
tags:
- permissions
- orm
- json
- security
title: Leveraging the ORM to enforce object-level permissions
track: t0
video_url: ''
---

Django provides a robust permissions system out of the box, but it’s limited to operating at the model level. What if you want to assign permissions to create, modify, or delete only objects with certain attributes? In NetBox, we did exactly this by leveraging the ORM, JSON, and database transactions. We’ll quickly demonstrate how easy Django makes it to create a custom authentication backend and permission model to accommodate even complex object-based constraints.
