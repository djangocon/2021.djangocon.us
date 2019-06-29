---
abstract: WRDS at The Wharton School runs an API service with over 60,000 individual
  endpoints, each with different permissions. See how we do it in an automated fashion
  with Django! Some of the solutions are elegant, some less so, but it works. Much
  of it is open-sourced, and we're looking to improve them!
accepted: true
category: talks
date: 2019-09-23 11:30:00 -0500
difficulty: Intermediate
end_date: 2019-09-23 12:20:00 -0500
image: /static/img/social/presenters/timothy-allen.png
layout: session-details
permalink: /talks/awesome-automated-apis-with-automagic/
presenters:
- timothy-allen
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- postgresql
- django-rest-framework
- big-data
- finance
title: Awesome Automated APIs with Automagic REST
track: t0
video_url: ''
---

When you have 60,000 tables and views across hundreds of schemata sitting on top of a 3 petabyte storage footprint, automation and access privileges are key if you want to expose these data through a RESTful API. Wharton Research Data Services (WRDS) leverages Python, Django, Django REST Framework, and PostgreSQL to accomplish this. We are continuing to open source the tools we have built to make this possible!

Databases stay relevant by continuing to reinvent themselves to serve new technologies further up the stack. The latest buzzwords further up that stack are APIs and microservices, so prevalent that it is hard to see a tech advertisement that doesn't mention them. While related to "the cloud" and "big data", whatever the heck those terms actually mean, APIs and microservices have a slightly less annoying marketing schtick and more concrete relations to relational databases.

But what do these relations look like in practice? In this talk, I will show how our team at The Wharton School has evolved from providing financial data exclusively in SAS data formats to a robust backend powered by PostgreSQL, which allows financial research to happen in many ecosystems: still available in SAS, but also R, Python, Perl, Matlab, Julia, and more. A case study will be shown that uses Django REST Framework to build an "API through introspection." This case study will show how WRDS built a Django web site and RESTful web service by introspecting financial data stored in a PostgreSQL database cluster.

The models for the ORM, serializers for the RESTful API, views for presenting the data to a user, filters for refining queries, URL routing, web browsable interface, user token authorization, and permissions, are all handled by introspecting various features of the PostgreSQL database information schema, all with Python. Many of these components have been open-sourced, such as the ability to export an endpoint as a spreadsheet file (XLSX), and a generic automated API builder, called Automagic REST.