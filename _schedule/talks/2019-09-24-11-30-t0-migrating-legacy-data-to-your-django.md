---
abstract: "So you have a project that comes with legacy data from another platform,
  how do you do a data migration to your projects models without much pain? \nIn this
  talk we'll discuss techniques to migrate from legacy databases, switching database
  engines or just having having files to your Django project."
accepted: true
category: talks
date: 2019-09-24 11:30:00 -0500
difficulty: Beginner
end_date: 2019-09-24 12:20:00 -0500
image: /static/img/social/presenters/adolfo-fitoria.png
layout: session-details
permalink: /talks/migrating-legacy-data-to-your-django/
presenters:
- adolfo-fitoria
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- database
- django
- legacy
- data migration
title: Migrating legacy data to your Django project.
track: t0
video_url: ''
---

To have legacy data for a new project is a common scenario that can be found in the wild, data sources can vary and having them ready for production without losing any old data is a priority. This talk will guide you on how to achieve this goal by sharing past experiences and gotchas that can be found on legacy data migration projects.

Talk Outline:

- Using Django's inspect to be able to generate models and read from the legacy database. (5 mins)
- Common gotchas and errors during the inspectdb process and slight differences between database engines that can cause issues. (8 mins)
- Patterns to build efficient and clean migration scripts. (10 mins)
- Consuming files as data source for your project (7 mins)
- Migrating users and auth details (10 mins)
- Demo: migrating a wordpress site database  to Django. (5 mins)