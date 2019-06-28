---
abstract: On average, developers spend 45% of their time fixing bugs and technical
  debt, instead of developing new features, had those bugs been caught during code
  review. The attendees will learn tips, tools, processes and recommended practices
  from my experience and from big players (Django, Facebook, etc).
accepted: true
category: talks
date: 2019-09-23 22:00
difficulty: Intermediate
layout: session-details
permalink: /talks/pull-requests-merging-good-practices/
presenters:
- bio: "I have a Masters degree in Computer Science and over 5 years of professional
    experience (plus a few more as a hobbyist). I’ve worked with several technologies,
    Python/Django being the one(s) I spent the most time with. I’m currently working
    as a consultant and full stack developer (Django/React) at Vinta Software, a brazilian
    development studio that strives for quality over quantity and focuses on delivering
    actual value to customers.\r\n\r\nI also like to work on side-projects, although
    my last big ones took place a while ago. I got the 4th Place in the World at Microsoft's
    Imagine Cup in 2011, in the Game Design Category with a [puzzle-like computer
    game](https://www.youtube.com/watch?v=U_pq3fBnH8I) made by my team and competed
    again with [another game](https://www.youtube.com/watch?v=8QqGDRLUbfI) in 2012.
    I've also won the 1st National Place in the same competition in 2015, in the Citizenship
    category, where my team and I developed an app for helping with the treatment
    for Autism."
  company: Vinta Software
  github: ''
  name: Luca Bezerra
  photo_url: ''
  twitter: lucabezerra_
  website: https://github.com/lucabezerra/
published: true
room: ''
sitemap: true
slides_url: ''
summary: ''
tags:
- code review
- pull request
- code management
title: 'Pull Requests: Merging good practices into your project'
track: t0
video_url: ''
---

## Abstract

Although known by most, **Pull Requests are often not dealt with in the most effective way**. Believe it or not, **there are teams that don’t review code at all!** People may assume that a senior developer is experienced enough to not make any mistakes, or that merely changing those 3 lines of code couldn’t possibly do any harm to the system. In these cases, it’s not uncommon to skip the code review in order to cut some time. Unreviewed (or badly reviewed) code can be extremely dangerous, resulting in huge risks and unpredictable behavior.

A survey says that, on average, **developers spend 45% of their time fixing bugs and technical debt**, when they could be developing new features instead. Defining simple guideline files, adopting certain behaviors and setting up repository configurations are steps that can increase manyfold the code review performance (in both time and quality). Using review tools both on server (e.g. Heroku Review Apps) and locally (e.g. linters) can also greatly increase the process’ speed. Creating templates and checklists ensures no step is overlooked or forgotten. The list goes on, but enough spoilers for now. The attendees will learn specific tips, tools, processes and recommended practices that were compiled from research and real-life use cases (both from my experience and from big players like Django, Facebook, Mozilla, etc), along with some survey data that demonstrates why reviewing code is important.

## What attendees will learn

This talk aims mostly at people who’ve had some experience with writing and reviewing code and want to go further into the topic, learning how tools, tips and best practices can be done/used to improve this process, as well as what to avoid. This talk doesn’t intend to say everything presented in it is a ‘must have’, but instead it’s a compilation of possibilities for attendees to pick what best fits their needs. They’ll also be presented to a checklist that they can use freely in their projects in order to ensure code reviewing is being done in the best way possible.

Complete newcomers to code reviewing/pull requests are also welcome, but it’s advisable that the basic concepts of how the overall process works are already known, in order to get a better grasp of how the ideas presented in this talk can be beneficial. In any case, PR reviews can be a great tool for newcomers to learn best practices, both on commercial and open-source projects, so it might also be useful for those with little experience to understand how they can learn while reading other people’s code.