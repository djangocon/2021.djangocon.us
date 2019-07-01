---
abstract: Django gives us a built-in authentication system. It's an awesome asset
  for doing web development strictly with Django, but when you try to do something
  else, you’ll need to integrate with other options. Understanding it at a base level
  makes more advanced authentication systems easier to implement.
accepted: true
category: talks
date: 2019-09-25 17:00:00 -0500
difficulty: Intermediate
end_date: 2019-09-25 17:50:00 -0500
image: /static/img/social/presenters/renato-oliveira.png
layout: session-details
permalink: /talks/understanding-django-authentication/
presenters:
- renato-oliveira
published: true
room: Salon A-E
sitemap: true
slides_url: ''
summary: ''
tags:
- deep dive
- django
- authentication
talk_slot: full
title: Understanding Django authentication
video_url: ''
---

Django provides us a great built-in authentication system. Although it is an awesome asset for doing web development strictly with Django, when you try to do something a bit out of the box, you’ll need to integrate with other options.

Single page applications, APIs, Distributed systems, single sign-on, and social login are just some cases that we need to go beyond the Django authentication/session system and do something new. Techniques like Oauth2, Token, and JWT are just a few that we can use nowadays, but how they integrate with Django? And what to do when we have requirements that don’t fit in already existing solutions?

You need to understand how auth works and it’s not hard. Understanding it at a base level makes more advanced authentication systems easier to implement.

In this talk, we’re going to walk through Django internals to understand what happens when you Login on a website and after when we need to have our request authorized to perform actions on our application.

We’ll also understand how third-party authentication apps work, which technique to choose for each case and we’ll create a custom auth for an edge case.


 * Introduction (1 min)
 * Authentication, HTTP and RFCs (6 min)
 * Session-based authentication (4 min)
 * Django Authentication System (6 min)
 * Oauth2 (6 min)
 * JWT (4 min)
 * Token-based authentication (3 min)
 * Extending Django's authentication system (6 min)