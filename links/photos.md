---
layout: link
permalink: /photos
redirect_link: /not-active
---
{% assign events = "" | split: "," %}
{% assign current_time = site.time | date: "%s" | to_integer %}
{% assign sorted = site.events | sort: 'date' %}
{% for post in sorted %}
{% assign end = post.date_end | date: "%s" | plus: 86400 | to_integer %}
{% assign start = post.date | date: "%s" | plus: 86400 | to_integer %}
{% if end >= current_time or start >= current_time %}
{% assign events = events | push:post %}
{% endif %}
{% endfor %}
{% if events.size > 0 %}
    {% for post in events %}
        {% assign end = post.date_end | date: "%s" | plus: 86400 | to_integer %}
        {% assign start = post.date | date: "%s" | plus: 86400 | to_integer %}
        {% if end >= current_time %}
            {% if post.photos != "" %}
                {{ post.photos }}
                {% break %}
            {% endif %}
        {% endif %}
    {% endfor %}
{% endif %}
