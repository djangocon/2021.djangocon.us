---
abstract: In Django, we have a powerful tool called ORM to manipulate databases. For
  small queries, it can be quite simple but what happens when you need to do tricks
  like nested queries or computed values? One of the answers is query expressions.
  In this talk, we'll learn how to power-up queries effectively.
accepted: true
category: talks
date: 2019-09-23 22:00
difficulty: Intermediate
layout: session-details
permalink: /talks/building-effective-django-queries-with/
presenters:
- bio: I'm a full stack developer at Vinta Software (www.vinta.com.br), and Django
    Girls organizer at my hometown, Recife. When not coding and working on personal
    projects, I'm usually cooking and watching Grey's Anatomy.
  company: Vinta Software
  github: ''
  name: Vanessa Barreiros
  photo_url: ''
  twitter: vcfbarreiros
  website: https://vinta.software/
published: true
room: ''
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- query
- performance
- expressions
title: Building effective Django queries with expressions
track: t0
video_url: ''
---

It's known that ORMs are a powerful tool to manipulate databases with ease. In Django, there are a set of out-of-the-box abstractions to help perform queries and shape them through annotations, aggregations, order by, and so on, hence saving one's time. A common solution to filtering when models grow larger over time is creating redundant fields; a better solution is using Django built-in resources called query expressions.

Query expressions are smart yet straightforward functions that one can use to compute values on query execution and do string manipulation, calculations, among others, thus removing the burden of having unnecessary extra columns in our database. Using query expressions effectively can help to generate performant queries, avoiding potential inconsistencies and separating concerns.

This talk focuses on further optimizing Django queries by walking through code comparisons and examples with a dataset, diving into subjects such as custom database functions, conditional expressions, and filtering so to answer questions about data.