---
abstract: Many orgs change frameworks mid-stream to more or less success; in this
  talk, you'll get a real-life fairytale of switching from Flask to Django, why each
  was valuable, how they got team buy-in, what technical decisions made things easier/harder,
  and how they switched without stopping product work.
accepted: true
category: talks
date: 2019-09-23 17:00:00 -0500
difficulty: All
end_date: 2019-09-23 17:30:00 -0500
image: /static/img/social/presenters/nicole-zuckerman.png
layout: session-details
permalink: /talks/the-promised-django-land-the-tale-of-one/
presenters:
- nicole-zuckerman
published: true
room: Salon F-H
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- flask
- python
- port
title: The promised Django Land; the tale of one team’s epic journey from Flask
track: t2
video_url: ''
---

## Part 1: A fairytale Journey (5 min)

* Why the team chose flask in the first place (It was the right decision at the time, for a number of reasons)
* What limitations led to the decision to switch (No fault of Flask's, but rather a change in our needs)
* How the team unified behind the decision

## Part 2: Making it a reality (20 min)

### The plan (5 min):
* incremental porting
* green field projects in django
* if you touch a legacy flask app, port it if at all possible; include that in the project’s scope of work
* Make django flexible to handle the way flask works, for now, so we’re only developing in one system. Let flask remain as it is; let’s not sink further effort into developing it anymore.

### Support for making it happen (3 min):
* voluntary task force meeting weekly, where work is done as part of your normal work-day (not hero hours at midnight)
* slack channel full of knowledgeable people happy to help, or clear roadblocks.
* github group to review your code once it’s ported, make suggestions, etc
* Office hours where you can get help right away

### The sweat and toil of getting from here to there: Technical challenges along the way (10 min)
* Schema-aware django: Our existing db structure relied on the use of schemas; how could we support that with minimal disruption?
* Migrations: While we have a foot in both worlds, how do we handle migrations?
    * Safe Migrate, a homegrown command, equivalent to running django's built-in python manage.py migrate labs --fake.   python manage.py safemigrate
    * If the table already exists in our DB because it was created by an alembic migration defined in our flask api, using safemigrate will automatically fake the first migration.
    * Future migrations can be run through django as normal: python manage.py migrate labs
* Request routing: How will django & flask work together?
    * Django will receive all requests, and proxy to flask
    * Initially, we’d considered having django import our flask application and call into views directly, sharing the same uwsgi process.  We ultimately decided against this for simplicity; it would be tricky to get sqlachemy sessions playing nicely with django sessions, for things like automatic rollbacks.  It’s possible, but we were optimizing for getting MVP up and running as quickly as possible.
    * Ultimately, we decided to have both standing up independently, but have django send requests to flask to handle if django doesn’t have that app or endpoint ported yet. Flask would send the response back to django, and django would serve them up to our front end.
    * Potential latency was a concern, with this strategy, but through testing we saw it was sufficiently little to be tolerable.
* Authentication: How can both systems have an authenticated user, with relatively little intervention?
    * Flask needed the user info for all the checks about whether someone's logged in, but also whether they have a given role. We decided not to monkey with that by moving all those things to django right off, but passing the credentials through, using JWT.
* Porting shared tools: How do we reduce the cost of future engineers porting their features?
    * Our temporal library,  an event log, and one major application were our first big pieces that everything else relies upon.  Once we ported those, we lowered the complexity and risk of anyone else porting features in the future.
* Decisions to make our lives easier: Uni-directional flow
    * Rather than have django ask flask for info, and flask ask django for info, which we imagined would get messy, we unilaterally decided that django could ask flask for info, but flask must remain isolated and not call into anything in django
    * This means that for some tools used by both, we ported the tool but still had to maintain it, medium-term, in flask as well.  We believed duplicate code was easier to reason about than having flask and django inter-dependent.

The Sequel: Living in the new reality (5 min)
---------------------
* How this is working out for us 2 years later
* Decisions that made our lives easier
* Struggles we face