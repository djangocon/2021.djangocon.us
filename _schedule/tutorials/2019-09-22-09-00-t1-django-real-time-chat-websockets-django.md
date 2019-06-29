---
abstract: Production applications increasingly need real-time updates and REST falls
  short.  In this tutorial, you'll learn the fundamentals of WebSockets and you'll
  add real-time chat to a Django app. Then you'll deploy your app to AWS and learn
  how to avoid common gotchas in future real-time apps you build.
accepted: true
category: tutorials
date: 2019-09-22 9:00:00 -0500
difficulty: Intermediate
end_date: 2019-09-22 12:30:00 -0500
image: /static/img/social/presenters/cara-borenstein.png
layout: session-details
permalink: /tutorials/django-real-time-chat-websockets-django/
presenters:
- cara-borenstein
published: true
room: Sierra 5
sitemap: true
slides_url: ''
summary: ''
tags:
- django channels
- AWS
- websockets
- real-time chat
- python
- react
- javascript
title: 'Django Real-time Chat: WebSockets, Django Channels, and Deploying to Production'
track: t1
video_url: ''
---

In the first half of this tutorial, you’ll learn about the fundamentals of WebSockets and you’ll build a real-time chat application using Django Channels.  In the second half, you’ll learn how to deploy your app to a production environment in AWS and how to avoid common gotchas in future real-time chat apps you build.

<h2>Tutorial outline</h2>

<h3>Introduction (10 minutes)</h3>
<ul><li>Introduction, outline, and goals for this tutorial.</li></ul>


<h3>Introduction to WebSockets (20 minutes)</h3>
<ul><li>Why you should have WebSockets in your toolbox</li>
<li>What are WebSockets?</li>
<li>Advantages of WebSockets</li>
<li>Limitations of WebSockets</li>
<li>Who uses WebSockets</li></ul>

<h3>Intro to Django Channels (20 minutes)</h3>
<li>What is Channels?</li>
<li>Writing your first consumer</li>
<li>Writing your second consumer</li>
<li>How Channels fits into your stack</li>

<h3>Walkthrough - building a Real-time Chat application with Django Channels (45 minutes)</h3>
<li>From our starter Python Django/React Javascript application, we’ll implement real-time chat</li>

<h3>Getting ready to deploy with Daphne and NGINX (20 minutes)</h3>
<li>What is daphne?</li>
<li>What is NGINX?</li>
<li>How to configure NGINX for WebSockets</li>
<li>Common Gotchas with NGINX for WebSockets</li>

<h3>AWS Crash Course  (15 minutes)</h3>
<li>Building blocks of AWS: EC2, VPCs, Security Groups, and Load Balancers</li>

<h3>Deploying Django Channels to Production (20 minutes)</h3>
<li>How to set up AWS Infrastructure - using ElasticBeanstalk</li>
<li>How to set up ElastiCache (Redis) as our backend store</li>
<li>Common performance gotchas with deploying WebSockets</li>

<h3>Walkthrough - let’s go to prod! (1 hour)</h3>
<li>We’ll deploy our chat app to AWS using ElasticBeanstalk and ElastiCache</li>

<h3>Flex Time (remainder of time left)</h3>
<li>Additional time for questions and coding/configuring</li>

<h3>Conclusion</h3>
<li>Wrap up</li>
<li>Next step: test your channels app with async tests (resources provided)</li>
<li>Additional Resources</li>

<h3>Attendee Expectation</h3>
<p>We will be building a chat app using Python, Django, and Django Channels on the backend, and ReactJS on the frontend. We will deploy this application to an AWS Account.</p><p>The base Django and React/Webpack setup will be provided so you don’t need to be a Python/Django or React/Javascript expert, but some foundational knowledge is recommended. You will need an AWS account to deploy your app.</p>