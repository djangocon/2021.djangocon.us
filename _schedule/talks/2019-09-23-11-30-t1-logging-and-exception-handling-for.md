---
abstract: Logging is better than print(), but often the effort to set up and use Python
  logging is perceived to be impractical. In this session we'll review Python's logging
  API, explore handling exceptions using logging, and discuss various configurations
  available in Django.
accepted: true
category: talks
date: 2019-09-23 11:30:00 -0500
difficulty: All
end_date: 2019-09-23 12:20:00 -0500
image: /static/img/social/presenters/ryan-sullivan.png
layout: session-details
permalink: /talks/logging-and-exception-handling-for/
presenters:
- ryan-sullivan
published: true
room: Salon F-H
sitemap: true
slides_url: https://github.com/rgs258/logging_in_django/blob/master/Logging%20and%20Exception%20Handling%20for%20Django%20V2-20190923.pdf
summary: ''
tags:
- python
- logging
- exceptions
- django
title: Logging and Exception Handling for Django
track: t1
twitter:
  card: player
video_url: https://youtu.be/ziegOuE7M4A
---

Logging is better than print(), but often the effort to set up and use the Python logging is perceived to be impractical. In this session we'll review Python's logging API, explore handling exceptions using logging, and discuss various configurations available in Django.

# Outline
1. Introduction
    1. Why Logging (your log calls annotate your code, etc.)
    2. Why Exceptions (because stuff breaks!)
    3. About me
2. About Logging
    1. What is the logging API
    2. When to use it (anywhere you'd use print)
    3. Event Types - audit and diagnostic vs metrics
3. About exceptions
    1. What are they
    2. Some common situations and what to handle
    3. General anatomy and some common types
    4. Making your own exceptions
3. Python Logging
    1. Loggers
    2. Log Levels
    3. The LogRecord (the burrito with all the fillings)
    4. Formatters (read it your way)
    5. Handlers (put stuff where you want it)
    6. Filters (real power when you need it!)
4. Logging and Exception Handling
    1. Getting a logger by \_\_name__
    2. Writing to the logger
    3. Logging with exceptions
    4. logger.exception
    5. Raising with e
4. Django Logging
    1. Django default logging
    2. Email and Console handlers
    3. Rollbar and log aggregaters
    4. Middleware and logging
    5. Revealing ORM SQL
5. Custom logging configurations
    1. Adding a root logger
    2. Replacing sys.excepthook
    3. Controlling levels
    4. Custom formatters
6. Bonus: Debugging! (time permitting)
    1. How to debug Django on Pycharm
7. Questions
