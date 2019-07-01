---
abstract: In Django, we have a powerful tool called ORM to manipulate databases. For
  small queries, it can be quite simple but what happens when you need to do tricks
  like nested queries or computed values? One of the answers is query expressions.
  In this talk, we'll learn how to power-up queries effectively.
accepted: true
category: talks
date: 2019-09-23 12:20:00 -0500
difficulty: Intermediate
end_date: 2019-09-23 12:50:00 -0500
image: /static/img/social/presenters/vanessa-barreiros.png
layout: session-details
permalink: /talks/building-effective-django-queries-with/
presenters:
- vanessa-barreiros
published: true
room: Salon F-H
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- query
- performance
- expressions
title: Building effective Django queries with expressions
track: t1
video_url: ''
---

It's known that ORMs are a powerful tool to manipulate databases with ease. In Django, there are a set of out-of-the-box abstractions to help perform queries and shape them through annotations, aggregations, order by, and so on, hence saving one's time. A common solution to filtering when models grow larger over time is creating redundant fields; a better solution is using Django built-in resources called query expressions.

Query expressions are smart yet straightforward functions that one can use to compute values on query execution and do string manipulation, calculations, among others, thus removing the burden of having unnecessary extra columns in our database. Using query expressions effectively can help to generate performant queries, avoiding potential inconsistencies and separating concerns.

This talk focuses on further optimizing Django queries by walking through code comparisons and examples with a dataset, diving into subjects such as custom database functions, conditional expressions, and filtering so to answer questions about data.