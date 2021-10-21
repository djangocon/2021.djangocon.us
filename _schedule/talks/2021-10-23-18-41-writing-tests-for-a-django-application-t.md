---
abstract: Writing a comprehensive test suite for Django applications is never easy.
  If the tests depend on the database they are slow and if they don't they have to
  mock the Django models and queries, which is quite complex. What if there was a
  tool that did all of the mocking for you in just a line of code?
accepted: true
category: talk
date: 2021-10-23 18:41:00 -0500
difficulty: Intermediate
image: /static/img/social/presenters/alan-una-larisa.png?v=2021-10-04
layout: session-details
permalink: /talks/writing-tests-for-a-django-application-t/
presenter_slugs:
- alan-una-larisa
presenters:
- bio: I am a Python enthusiast with a focus on the web backend and automation. Despite
    my youth I have worked in several different mostly non-tech positions before switching
    to software engineering full-time due to needing more daily technical challenges.
    I did not really consider this a career change though, as code for me is merely
    a language through which to express ideas and a tool with which to build systems.
    Python allows me to build systems that are intricate as well as approachable and
    develop my ideas in a way that makes them useful to other people and hopefully
    society. To me software architecture really is the highest form of creativity.
    I am passionate about open source and am an organiser, speaker and diversity advocate
    in my local Slovenian Python community.
  company: Bitstamp
  github: ''
  name: Alan Una Larisa
  photo_url: ''
  twitter: ''
  website: ''
published: true
sitemap: true
slides_url: ''
summary: ''
tags:
- Python
- Django
- testing
talk_slot: full
title: 'Writing tests for a Django application doesn''t have to suck: the simplest
  way to write short, fast and maintainable tests'
track: null
video_url: https://youtu.be/9dqDij1cSXw
---

### Let's face it, writing tests sucks

There is a widspread belief that software engineers hate writing tests, even if they sometimes don’t like to admit it. This might just be especially true for Django as comprehensively testing Django applications is not exactly straightforward. For a complete coverage we need to have unit tests as well as integration tests and oftentimes at least some of those are more difficult to write than the code itself. 

But what should we do about it? Should we do it while hating it (bad), not do it (worse) or, as engineers, try to come up with tools that automate the boring tasks, make our job easier and less error-prone? It seems there is still room for improvement on this front, especially in the Django context.

### Writing a comprehensive Django test suite sucks even more

Most software engineers believe unit tests should be independent of the database. If you have ever written unit tests for Django you know that doing so can be very complicated. It requires mocking all of the database queries, usually with the help of Unittest’s [mock](https://docs.python.org/3/library/unittest.mock.html). While the latter can be an excellent tool for many use cases, it was not made with Django in mind. Consequently mocking queries can be counterintuitive and convoluted, often requiring extra mental gymnastics just to make a simple test pass.

### Let’s do something about it!

Writing tests is necessary for larger production codebases, but is good practice for any application. It makes sense that the simpler writing tests is, the more people will do it, and the overall quality of software will improve, so we should strive towards that.

I attempt to do my part in solving this problem by writing a [library](https://github.com/larsvonschaff/Django-mockingbird) (please note the account name is a pseudonym) that helps mock Django models for testing. It automatically constructs an object which mimics your model’s exact behaviour in only one line of code. This makes your tests short, simple, fast and easy to maintain.
