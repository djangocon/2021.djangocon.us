---
abstract: Building a prototype in a weekend is the dream of startups and established
  business alike.  But if you cut corners and the product takes off, you will be stuck
  with your mistakes for years.  This talk will show you the tools and techniques
  to build a minimal-regrets rapid prototype in Django.
accepted: true
category: talk
date: 2021-10-23 16:50:00 -0500
difficulty: All
image: /static/img/social/presenters/benjamin-zags-zagorsky.png?v=2021-10-04
layout: session-details
permalink: /talks/rapid-prototyping-in-django/
presenter_slugs:
- benjamin-zags-zagorsky
presenters:
- bio: Zags is the CTO of Zagaran, Inc., a contract software company.  He has led
    dozens of full-stack software development projects between both the private and
    public sectors.  Zags graduated from Harvard in 2012 with bachelor's and master's
    degrees in Computer Science.  He previously worked at Google, mentors for TechStars,
    and is a published game theorist.
  company: Zagaran, Inc.
  github: ''
  name: Benjamin "Zags" Zagorsky
  photo_url: ''
  twitter: ''
  website: https://zagaran.com
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- prototyping
- architecture
- design
- best practices
- tools
talk_slot: full
title: Rapid Prototyping in Django
track: null
video_url: https://youtu.be/V1dEWyzDfuY
---

Building a usable prototype in a weekend is the dream of startups and established business alike.  This is the lean startup approach.  You have many ideas.  Not all of those ideas will work, and all of them take attention away from known ways of making money.  So, you need to validate those ideas as cheaply as possible.  This means you need to build MVPs (minimum viable products) as fast as possible.  But there is a danger; if you cut the wrong corners and one of these new products takes off, that MVP will be the seed for a massive product and you will be stuck with your mistakes for years to come.  This talk will show you the tools and techniques to build a rapid prototype in Django, as well as how to minimize regrets later.

I'm the CTO of Zagaran, Inc., a contract software company based in Boston.  We've built dozens of Django websites.  Many of our projects have started with building a prototype on a small budget, and Django is one of our favorite technologies for doing this.  In this talk, we'll cover the following technologies and more:
* [Django's model forms](https://docs.djangoproject.com/en/dev/topics/forms/modelforms/) (minimizes boilerplate code for HTML form rendering and validation)
* [django-crispy-forms](https://django-crispy-forms.readthedocs.io) (gives you out of the box styling of forms and more backend control over layout)
* [django-environ](https://django-environ.readthedocs.io) (improved ability to configure environment variables)
* [django-storages](https://django-storages.readthedocs.io) (production-grade seamless file storage)
* [social-auth-app-django](https://python-social-auth.readthedocs.io/en/latest/configuration/django.html) (makes oAuth logins easy)
* [django-extensions](https://django-extensions.readthedocs.io) (makes debugging much easier)
* [The Django Admin](https://docs.djangoproject.com/en/dev/ref/contrib/admin/) (easy creation of CRUD interfaces for internal users)

See [Zagaran's Django project template](https://github.com/zagaran/sample-django-app) for an example of these technologies in action.
