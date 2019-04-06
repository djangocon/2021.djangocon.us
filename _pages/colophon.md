---
layout: default
title: Colophon
heading: Colophon
permalink: /colophon/
description: Thank you to those who have inspired us
---

We are grateful to the past organizers of DjangoCon US and of other events for their help and inspiration. The following is an incomplete list of organizations and conferences whose positive example, advice, and generosity have helped make DjangoCon US the welcoming conference it is today.

## Organization

- [Geek Feminism Wiki](http://geekfeminism.wikia.com/wiki/Conference_anti-harassment/Policy), Code of Conduct
- [AlterConf](https://www.alterconf.com/speak), speaker slide guidelines
- [DjangoCon Europe](https://2016.djangocon.eu), Code of Conduct Transparency Report
- [DjangoCon Europe](https://2015.djangocon.eu), speaker mentorship program
- [University of Bristol, LGBT+ Society](http://www.lgbtplusbristol.org.uk/), bathroom signage
- [Django Under the Hood](https://djangounderthehood.com/), deep dive day

## Website Design

This website is based on free and open source software, and was designed by our friends at [YupGup](http://yupgup.com/).

- [Jekyll](https://jekyllrb.com/)
- [Foundation](https://foundation.zurb.com/sites/docs/)
- [PyCon Australia](https://2018.pycon-au.org/colophon/), for this colophon
- [Styleguide](/styleguide/), to see the fonts and colors used in this website

## Image Credits

- [DjangoCon US 2018 Group Photo](https://www.flickr.com/photos/144080672@N05/albums/72157702995974445), Bartek Pawlik, CC BY-NC 2.0
- [Group visit to ENIAC](https://www.flickr.com/photos/144080672@N05/28810970252/in/album-72157672216515946/), Bartek Pawlik, CC BY-NC 2.0
- [San Diego Crowd](https://www.flickr.com/photos/144080672@N05/albums/72157702995974445), Bartek Pawlik, CC BY-NC 2.0
- [San Diego Marriott Mission Valley](https://www.marriott.com/hotels/travel/sanmv-san-diego-marriott-mission-valley/), courtesy of the hotel

<div class="partner-footer section-pad">
  <h3 class="v-pad-bottom text-left">Our Sponsors</h3>
  {% assign sponsors_by_level = "Platinum|Gold|Lanyard|Silver|Bronze|Diversity & Inclusion|Community" | split: "|" %}
  {% for level in sponsors_by_level %}
    {% assign sponsors_in_level = site.sponsors | where: 'level', level | where: 'hidden', false %}
    {% assign sponsors_count = sponsors_in_level | size %}
    {% if sponsors_count != 0 %}
    <h4 class="lead min text-center swatch-color-teal">{{ level }}</h4>
    <div class="row partner-list">
      {% for sponsor in sponsors_in_level %}
        {% unless sponsor.hidden %}
        <div class="partner-block text-center">
          <a href="{{ sponsor.url_target }}">
            <img
              class="partner-logo {{ sponsor.logo_orientation }}"
              src="{{ sponsor.logo }}"
              alt="{{ sponsor.name }} Logo" />
          </a>
        </div>
        {% endunless %}
      {% endfor %}
    </div>
    {% endif %}
  {% endfor %}
</div>
