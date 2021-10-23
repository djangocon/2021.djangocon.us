---
abstract: Good test data can be a nightmare to manage! It can make-or-break testing
  efforts. Should we preload our databases? Should we use dynamically-generated dummy
  data? What about collisions? Let's cover practical strategies for handling data
  both in our products and in our test cases.
accepted: true
category: talk
date: 2021-10-23 16:10:00 -0500
difficulty: Intermediate
image: /static/img/social/presenters/andrew-knight.png?v=2021-10-04
layout: session-details
permalink: /talks/managing-the-test-data-nightmare/
presenter_slugs:
- andrew-knight
presenters:
- bio: Andrew Knight is the "Automation Panda" - a software engineering leader who
    builds solutions for software testing problems. Over the past decade, he has designed
    and built robust test automation projects from the ground up that can run thousands
    of tests continuously. He is the author of the upcoming book "The Way To Test
    Software" from Manning Publications, and he is also the lead developer for Boa
    Constrictor, the .NET Screenplay Pattern. Andy currently works full-time as the
    Lead Software Engineer in Test at PrecisionLender, a Q2 Company. Read his tech
    blog at AutomationPanda.com, and follow him on Twitter at @AutomationPanda.
  company: ''
  github: ''
  name: Andrew Knight
  photo_url: /static/img/presenters/andrew-knight.jpg
  twitter: AutomationPanda
  website: https://automationpanda.com/
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- testing
- best practices
- database
talk_slot: full
title: Managing the Test Data Nightmare
track: null
video_url: https://youtu.be/CS663BxLpE8
---

Good data for testing can be a **nightmare** to manage. Sometimes, teams don't have much control over the data in their systems under test—it's just dropped in, and it can change arbitrarily. Other times, teams need to build their own data sets, either before testing or during testing. Inaccurate data can leave test gaps. Incorrect or stale data can break tests. Large data can consume too much time. Ugh!

In this talk, we'll cover strategies for defeating many types of test data nightmares:

* recognizing the difference between *product* data and *test case* data
* deciding when to prepare data statically beforehand or dynamically during testing
* using data to control how tests run or reflect product state
* hard-coding values versus discovering data in the system
* avoiding collisions on shared data

The strategies we cover can be applied to any project in any language, especially Django. After this talk, you will wake up from the nightmare and handle test data cleanly and efficiently like a pro!
