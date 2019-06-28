---
abstract: In this talk I'll discuss Django's generic class-based views (CBVs). I'll
  go into detail on what they are, how they compare to function-based views, and pros/cons
  for using them. I plan to go deeper into certain aspects of CBVs, explaining some
  of the internals of how django defines them.
accepted: true
category: talks
date: 2019-09-23 22:00
difficulty: Intermediate
layout: session-details
permalink: /talks/generic-view-what-is-that-and-why-would/
presenters:
- bio: 'I’m a full stack developer at UT Austin. I self-describe as a dog person,
    but somehow have 3-4 cats (one comes and goes) and no dogs at the moment. Interestingly,
    two of my cats were born the very first day I started as a developer so they’ve
    grown up with my career :smiley_cat: On my spare time I like to learn about tech
    I don’t use at work, play video games like Elder Scrolls, and spend with my partner
    and friends.'
  company: University of Texas at Austin
  github: ''
  name: Felipe Lee
  photo_url: ''
  twitter: felipeleeg
  website: ''
published: true
room: ''
sitemap: true
slides_url: ''
summary: ''
tags:
- django
- cbv
- deep dive
title: Generic View? What is that and why would I use it?
track: t0
video_url: ''
---

## What is a Generic Class-Based View (CBV)?
I'll give a general explanation of what a CBV is.

### CBV vs Function-Based View
Comparisons with function-based views, showing a few sample conversions between some simple function-based views and CBVs.

### Pros/Cons
Discussion about reasons to use use CBVs, and times when maybe they aren't the best tool.

## CBV Internals

### URL Routing and `as_view`
Talk about how your `urls.py` handles using a CBV instead of a function. Also go into detail about how CBVs' `as_view` method works.

### `dispatch`
Discuss how dispatch works. This part is simple, until you start writing your own generic views that you'll subclass later.

### Some Common CBVs
Talk about a few common CBVs and the methods/attributes they add to the mix.

### Mixins
You can actually create class mixins that you can combine with the built-in CBVs to do some great things. I'll talk about how to create a simple mixin, and reasons you might want to do it.

### Decorating a CBV
There are some interesting things to keep in mind when decorating classes, especially when decorating classes you are going to subclass.

### Creating your own CBV
Talk about a few reasons you might want to create your own CBV, and some seemingly good, but actually bad reasons.

#### Example of a Bad CBV
I thought it was a good idea at the time to write a CBV that handled multiple forms with a variety of different arguments. When I wrote it, it worked out great! But when it came time to maintaining it, and passing the project on to other developers, it broke apart.

## What Do You Get Out of this Talk?
Hopefully, this talk will have you walking away with:

* An understanding of how generic views work
* Pros/cons to using generic views
* An example of a view you should probably never create...