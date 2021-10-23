---
abstract: We'll discuss some practices around designing Django models that'll make
  your model/database design debuggable plus will aid in scaling the system up & keep
  developers happy. It is easy to miss these things when you're starting but can become
  a pain in the future for developers if not done early.
accepted: true
category: talk
date: 2021-10-23 13:30:00 -0500
difficulty: Intermediate
image: /static/img/social/presenters/tarun-garg.png?v=2021-10-04
layout: session-details
permalink: /talks/design-django-models-such-that-your-self/
presenter_slugs:
- tarun-garg
presenters:
- bio: "I'm currently working as Engineering Manager at SquadStack, I've been here
    for the past 5 years and have seen the team and processes grow from 3 member engineering
    team to a now ~60 people engineering team. Being the early member of the engineering
    team, I got to experience a fair share of challenges and make a lot of mistakes
    along the way and that's why I wanted to share those learnings so that other people
    don't make those same mistakes and the community keeps on growing :D.\r\n\r\n-
    More about me? Well, I'm a passionate, responsible, and committed engineer with
    ~5 years of experience, the majority of it being in a fast-paced startup, where
    I got the experience to identify, prioritize and solve products, engineering,
    and people challenges and move things regularly from inception to production.
    *Built things with Python, Django, PostgreSQL, RabbitMQ, Celery & Empathy till
    now.*"
  company: SquadStack
  github: ''
  name: Tarun Garg
  photo_url: ''
  twitter: Tarun_Garg2
  website: https://www.linkedin.com/in/tarungarg546/
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- Django
- best practices
- user experience
- database
- architecture
talk_slot: full
title: "Design django models such that your future self will thank you \U0001F44B"
track: null
video_url: https://youtu.be/dXCh8m4P5Tc
---

While designing Django models, our primary objective is to develop a structure that'll enable us to build the said product feature, but while doing so ~we~ I used to neglect things like a) Ease of debugging/Auditing, b) Query patterns, c) and Scalability, and later when push came to shove these things used to become a blocker. While we can't possibly think and preempt everything from day 1(and if you try to - it'll take long to roll that feature out), we can do something better 🤔.

In this talk, we're going to be focusing on how you can avoid those mistakes early in your design phase 😌 - these are all the learnings I have had after making mistakes. We are going to cover the following - 

- Auditing your models
- Boolean field for flags vs. timestamped field
- Soft delete vs. hard delete
- Many boolean flags in a model? 
- How do you decide when to de-normalize?
- And much more ...

 *As with every piece of advice in life, the answer of whether you should apply these or not is - **" it depends."** In this task, we'll also discuss when you can use this advice and when you can choose to skip it.*
