---
layout: archive
title: "Archive"
permalink: /archive/
author_profile: false
---

{% include base_path %}

{% for post in site.posts %}
  <h2>
    <a href="{{ base_path }}{{ post.url }}">
      {{ post.title }}
    </a>
  </h2>

  <p>{{ post.excerpt }}</p>
{% endfor %}
