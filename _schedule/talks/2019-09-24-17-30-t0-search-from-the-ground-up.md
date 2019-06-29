---
abstract: 'Search is notoriously hard. Even a basic implementation trips up many beginners
  while advanced search is PhD-level complex.


  This is a bottoms-up look at how to add increasing levels of search to any Django
  site. From filters and AJAX to Postgres full text search and beyond we''ll cover
  it all.'
accepted: true
category: talks
date: 2019-09-24 17:30:00 -0500
difficulty: Beginner
end_date: 2019-09-24 18:00:00 -0500
image: /static/img/social/presenters/william-s-vincent.png
layout: session-details
permalink: /talks/search-from-the-ground-up/
presenters:
- william-s-vincent
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags: []
title: Search From the Ground Up
track: t0
video_url: ''
---

This is a step-by-step guide to adding--and then improving--search in any Django project.

For a beginner, search is confusing because it involves forms, querysets, and a strong understanding of views. Most learners don't know where to begin. We'll start by covering forms and passing data to a view or database; then modify ListView's queryset with increasing levels of filtering, Q objects, and the rest. And as a bonus implement basic autocomplete with jQuery.

Then we'll switch to Postgres built-in full text search and explore its full functionality. Built-in Django gets us most of the way there. Finally we'll look at ElasticSearch and other options for the true enterprise search experience.

The talk will mix abstract concepts and with concrete code examples (and a companion source code repo). Whatever the viewer's level of knowledge they should walk away with a better understanding of search and new ideas on how to improve it in their Django site.