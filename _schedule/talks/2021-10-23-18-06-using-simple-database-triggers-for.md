---
abstract: 'Django has evolved over the years to have first-class support for many
  advanced database features. Database triggers, however, are a common and powerful
  database feature with no built-in Django support, and they can actually solve a
  wide array of many complex Django problems very reliably and succinctly.

  In this talk, you will learn what database triggers are and what types of problems
  they solve. You will also learn how to easily integrate triggers into your Django
  project using a new open-source library and interactive tutorial. We will solve
  problems like creating append-only models, versioning models, soft-deleting models,
  and snapshotting historical changes to your models. You will leave wondering why
  on earth you never used triggers in the first place.'
accepted: true
category: talk
date: 2021-10-23 18:06:00 -0500
difficulty: Intermediate
image: /static/img/social/presenters/wes-kendall.png?v=2021-10-04
layout: session-details
permalink: /talks/using-simple-database-triggers-for/
presenter_slugs:
- wes-kendall
presenters:
- bio: Wes Kendall is the founder and CEO of LeapYear. He started the [Opus10 software
    group](https://github.com/Opus10), which maintains several open-source Django
    apps primarily centered around advanced usage of Postgres. Wes has used Django
    extensively since 2012 and loves finding ways to push the boundaries of the framework.
  company: LeapYear
  github: ''
  name: Wes Kendall
  photo_url: ''
  twitter: ''
  website: ''
published: true
sitemap: true
slides_url: ''
summary: ''
tags:
- postgres
talk_slot: full
title: Using simple database triggers for complex Django problems
track: null
video_url: https://youtu.be/Tte3d4JjxCk
---

Over the years I have struggled with a large class of Django problems, and I have found that these problems are much better solved using a common database feature called triggers.

Let's consider some real-world problems before we get into what triggers are. Say that you want to ensure that a "status" field on a model can only transition between valid states. There are many popular libraries like django-fsm that try to solve this problem. The major problem with these libraries is that it's also very easy to accidentally bypass what the library aims to protect. For example, just doing certain bulk updates with django-fsm will bypass transition protection. This is no fault of django-fsm - it's just nearly impossible to try to intercept every single database call in an application and do certain things. This, however, can lead to some serious errors down the road and confusion about why the library didn't "just work" in the first place.

Now let's expand this a bit more - consider protecting your models from deletion, making append-only models, versioning models, doing soft deletion, or tracking changes to your models. There are a plethora of libraries just for these very common problems, and the solutions are all prone to the same faults as django-fsm - there are *always* ways to purposefully or accidentally bypass what those libraries aim to do, and usually without knowing.

Similar to how you wouldn't rely on your application code to enforce a database uniqueness constraint, this talk aims to illustrate why you may not want your application code to solve these types of problems either. When you try to solve a database problem in the application, you will normally experience pain. Instead, I want to open people's eyes to the power of database triggers and illustrate why they should always be top of mind when designing high-quality Django projects and evaluating solutions to certain problems.

A database trigger is a method that runs entirely in the database and is based on events and conditions. For example, one can create a database trigger to compute derived fields on a row immediately after the row is inserted or updated. Normally a user will have to write these triggers as database functions that are a superset of the SQL dialect supported by the database, such as PL/pgSQL for Postgres. These intricacies, along with the many barriers for even installing a trigger, have really inhibited adoption of triggers in Django.

This is terrible though, because triggers are so useful for so many problems people don't even realize. For example, have you ever accidentally used Django's "User.objects.create()" to create a user and not the main "User.objects.create_user()" interface? You can use a trigger to enforce that the engineers of an application always use "Users.objects.create_user()" to create users. And no, it's not through monkey patching - *Any* creation of a user, even in raw SQL, would be blocked if you didn't go through the proper interface in your application. Examples like these, which sometimes can make people scratch their heads as to how it is even possible to do this, are what make triggers so fun and unique to talk about.

I have created an open-source library that is battle-tested at various large organizations that integrates triggers into Django. Triggers are registered and automatically migrated with your models, and there are lots of pre-built triggers for you to use. Users can even write conditional triggers with Django idioms like F and Q objects. If you are feeling really adventurous, you can integrate your own native triggers with ease too. I have an interactive tutorial for this library that I use during talks, I have performed this talk at 4 different companies as a tech talk, and I have also performed this talk at a prominent Django city meetup.

This talk provides the following take-aways for the participants:

1. Understanding how triggers work in databases and what problems they can be used to solve.
2. How people can seamlessly integrate triggers in their Postgres Django projects with an open source library. Currently the library only works for Postgres triggers, but I will have MySQL support integrated by Djangocon.
3. How people can solve a wide array of difficult problems very easily with triggers.

Here are some examples of problems we will solve together using an interactive tutorial:

1. Protecting operations - preventing deletes, making append-only models, making read-only columns, and "freezing" published models.
2. Soft-deleting models - setting a "is_active" flag to "False" when a model is deleted instead of actually deleting it.
3. Finite state machines - ensuring that a "status" field can only transition among valid states.
4. Versioning a model - incrementing a version number of a model only when fields have changed.
5. Official interfaces - requiring that an "official" interface, like Model.objects.my_create() vs. Model.objects.create(), is used to create a model.
6. History tracking - snapshotting before/after versions of your model automatically while still capturing context like the logged-in user.

All of these problems are solved in a few lines of code. Because of the properties of database triggers, these problems are also enforced at the database level - e.g. a user cannot delete a protected model even if they try to do it in raw SQL. That's the power of triggers, and that's why they are an important concept for Django developers to consider when approaching various problems. This talk aims to open people's eyes to what those problems are, why triggers are useful to them, and how they are actually very easy to use in practice.

Triggers are inherently an advanced subject, so this talk is not aimed at the beginning Django user. I am tailoring this more to the intermediate/advanced user that has implemented a fair amount of model design. For example, if you've overridden a model's "Meta" and added unique constraints before, you should be able to put lessons from this talk into practice.

I have been using Django in practice full time for 9 years now, and I have used it exclusively as the foundation for three different startups from the ground up. I went all-in on triggers at my last full-time job when it was the only reliable way to solve our history tracking problem, and that's how the open-source library was born. I love talking to people about Django, and I really love talking about integrating triggers with Django as you might be able to tell. That's why I'm so excited to talk about it at Djangocon and hopefully give people some other great ways to improve their application design.
