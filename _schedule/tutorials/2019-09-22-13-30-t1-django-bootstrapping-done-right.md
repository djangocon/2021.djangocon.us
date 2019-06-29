---
abstract: A step by step guide to setup a Django project with all the required tools
  you will need. We will cover all aspects a project must have, from the development
  environment with Docker to automated deployment with Pipelines.
accepted: true
category: tutorials
date: 2019-09-22 13:30:00 -0500
difficulty: Beginner
end_date: 2019-09-22 17:00:00 -0500
image: /static/img/social/presenters/pablo-garcia.png
layout: session-details
permalink: /tutorials/django-bootstrapping-done-right/
presenters:
- pablo-garcia
published: true
room: Sierra 5
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- docker
- ci
- tools
title: Django bootstrapping done right
track: t1
video_url: ''
---

We have been working with Django for many years and we discovered we were always repeating the same things at the beginning of each project. `pycodestyle` checks, unit tests, automated deployment, we where doing all of them over and over again and occasionally we were missing important things that would make our lives easier.

That's why we decided to create and maintain template repository with all the required tools to bootstrap a Django project. It has become very valuable for our company and that's why we want to share it with the community. The project is now open source and we will review all it in this talk.

## Virtual environments.

* Pyenv and Pipenv
* Useful dependencies for development (debug toolbar, extensions, django-environ, etc.)

## Services your application depends on

* Docker quickstart
* Compose example with DB (PostgreSQL), Cache (Redis), NGINX and RQ

## Git hooks

* Tests
* Flake
* PEP8
* Pylint
* JSCPD

## Deployment

* Deployment stack. Typical pieces of a small application.
* Deploying to Heroku

## CI/CD + Feature branch flow

* Pipelines
* Checkstyle tools
* Slack integration

## Monitoring tools

* Error logging with Sentry
* Application performance monitoring and profiling with NewRelic

https://bitbucket.org/devartis/django-bootstrap/src