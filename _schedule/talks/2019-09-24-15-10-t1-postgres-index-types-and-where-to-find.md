---
abstract: For a long time I only used the default btree to index data. As I was working
  on an app for crocodiles to find their dentist, I started looking into the other
  index types postgres offers to improve SQL performance. If you want to know all
  about btree, gin, gist… how, when and why use them, join me!
accepted: true
category: talks
date: 2019-09-24 15:10:00 -0500
difficulty: All
end_date: 2019-09-24 15:40:00 -0500
image: /static/img/social/presenters/louise-grandjonc.png
layout: session-details
permalink: /talks/postgres-index-types-and-where-to-find/
presenters:
- louise-grandjonc
published: true
room: Salon F-H
sitemap: true
slides_url: ''
summary: ''
tags:
- postgresql
- indexes
- orm
- django
- data
- performance
title: Postgres Index types and where to find them
track: t1
video_url: ''
---

As developers we use indexes a lot, some by explicitly asking our ORM, some because of primary keys, unique constraint… But indexes go further than the default btree. And by the way, what is a btree?

So today we will go over the index types that postgreSQL has:
- btree
- gin
- gist
- sp-gist
- brin
- hash
What is the difference between them? What data type are they most fit for? How can they help with the performance of your application? How can you create a new index with a different type than the btree in python?
All of these questions will be answered during this talk!