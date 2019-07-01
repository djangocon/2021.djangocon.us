---
abstract: Django’s ORM is probably its most-used but also least-understood component.
  This lecture-format tutorial will try to fix that, by teaching you best practices
  for using the ORM, advanced features you might not have known about, and technical
  details of how it works under the hood (as of Django 2.2).
accepted: true
category: tutorials
date: 2019-09-22 13:30:00 -0500
difficulty: Intermediate
end_date: 2019-09-22 17:00:00 -0500
image: /static/img/social/presenters/james-bennett.png
layout: session-details
permalink: /tutorials/mastering-the-django-orm/
presenters:
- james-bennett
published: true
room: Balboa I & II
sitemap: true
slides_url: ''
summary: ''
tags:
- database
- sql
- orm
- models
title: Mastering the Django ORM
track: t0
video_url: ''
---

This is a lecture-format tutorial which will cover the Django ORM in
depth; it's designed to be accessible to anyone who's worked through
an introductory Django tutorial, but intermediate and other slightly
more experienced users of Django will probably get the most out of it.

The material breaks down roughly as follows.

Fundamentals: exploring the concept of ORMs in general, arguments for
and against their use, including both known advantages -- like safer,
more portable and less tedious code for common query patterns -- and
known shortcomings such as the infamous "object-relational impedance
mismatch". From there, a look at the two major patterns of ORM design,
Data Mapper and Active Record, and a brief study of the history of
Django's ORM, including the high-level design choices which have gone
into it.

A basic tour of the ORM: this material may be remedial for some
attendees, but will re-introduce the major developer-facing components
of the Django ORM and their purposes, to ensure familiarity for later
sections.

Going beyond the basics, part 1: best practices for model design and
layout. Topics covered here will include: normal forms and the
advantages/disadvantages of various types of normalization; models and
their managers as the primary place to put "business logic" and as the
main public API of a Django application; using custom field types for
richer data modeling and validation; patterns for common model-design
issues like handling choices/enums; discussion of the various model
inheritance options supported in the Django ORM and their pros/cons;
understanding the migration framework and what can be done with
hand-written migrations; and custom user models.

Going beyond the basics, part 2: intermediate and advanced features
and patterns for working with your database. This will begin with an
exploration of some common querying pitfalls and how to prevent them,
and proceed from there into topics such as: performance optimization
through controlling exactly what Django will query for, including how
to skip loading entire result sets and instantiating all their model
objects; working with Q and F objects to build more complex queries;
annotation and aggregation patterns; the query expression API and how
to write custom expression and function wrappers to push functionality
out of Python code and into your database; using and wrapping
database-level views from the ORM; understanding and controlling
transaction behavior; and implementing and taking advantage of
advanced/custom indexes and constraints. This section will end with a
tour of the "danger zone": features of the ORM which often are more
trouble than they're worth, and how the previously-covered material
suggests alternatives or replacements for them.

Under the hood: a deep technical dive into the internals of the
ORM. The original high-level tour of the ORM's components will be
revisited, this time delving into how each component is
implemented. This section will cover the model metaclass and model
introspection API; the base Manager and QuerySet classes and their
relationships to each other; the structure of the underlying Query
object and useful methods on it; SQL compilers and how they process
and transform a Query; and the structure of Django's database backend
modules. Finally, this section and the main tutorial will conclude
with a full walkthrough of a query, starting from the model class and
tracing it all the way "down" the stack through each component, into
the database, and then back "up" the ORM's component stack to the
resulting QuerySet of model instances.

Time remaining past this point will be used for Q&A, but attendees
will also be encouraged to ask questions throughout the entire
session, including dedicated question breaks at the end of each
section.