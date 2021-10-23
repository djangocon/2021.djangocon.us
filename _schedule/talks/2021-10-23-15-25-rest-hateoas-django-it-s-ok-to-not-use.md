---
abstract: REST and HATEOAS are terms that are most often associated these days with
  JSON APIs.  This is ridiculous, and I will explain why.  I will then show you how
  you can create a better REST-ful system than nearly any JSON API developer, without
  even really trying, using good ol' Django.
accepted: true
category: talk
date: 2021-10-23 15:25:00 -0500
difficulty: All
image: /static/img/social/presenters/carson-gross.png?v=2021-10-04
layout: session-details
permalink: /talks/rest-hateoas-django-it-s-ok-to-not-use/
presenter_slugs:
- carson-gross
presenters:
- bio: At Big Sky Software we look for hot new industry trends and then build the
    opposite of that...
  company: Big Sky Software
  github: ''
  name: Carson Gross
  photo_url: ''
  twitter: htmx_org
  website: https://bigsky.software
published: true
show_video_urls: true
sitemap: true
slides_url: ''
summary: ''
tags:
- REST
- HATEOAS
- web
- front-end
talk_slot: full
title: REST, HATEOAS & Django - It's OK to not use JSON... or Javascript
track: null
video_url: https://youtu.be/L_UWY-zHlOA
---

# REST, HATEOAS & Django -
*it's OK to not use JSON... or Javascript* 

## Intro

In this talk we will revisit the basics of REST (REpresentational State Transfer), a term coined by Roy Fielding to describe the web network architecture, in contrast with older client-server network architectures.  In particular we will focus in on the "Uniform Interface" constraint and get to the bottom of what that means, discussing each of the following:

* Resource identification in requests
* Resource manipulation through representations 
* Self-descriptive messages
* Hypermedia as the engine of application state (HATEOAS) 

with a particular focus on the last two.

## REST: Wandering in the Desert

After gaining a deeper understanding of REST, we will look at the history of REST in development.  We will look at how the term was appropriated for use in XML APIs, when AJAX first emerged, and how it was then retained when APIs switched to JSON.  I will demonstrate why this is inappropriate by focusing on the ideas of the self-descriptive messages and HATEOAS constraints of REST.  We will look at recent developments in the JSON API space and how they are moving away from the concept of REST.

## REST: A New Hope

Finally, having established that REST does not apply well in the JSON API world, we will ask *where* it is appropriate and answer: in hypermedia systems.  And, it will turn out, tools like Django are wonderful for producing hypermedia systems!  In reexamining the hypermedia approach, and how it trivially satisfies the REST-ful architecture, we will look at a tool, htmx, that can help you create more advanced user experience while staying within the hypermedia architecture.

It's OK to not use JSON... or Javascript!
