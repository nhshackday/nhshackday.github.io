---
title: "Team"
subtitle: "Some of the current people behind NHS Hack Day"
header_image: graphics_img.jpg
image_credit: 
  - Credit: "Paul Clarke"
    URL: "http://paulclarke.com"
    Licence: "CC BY-NC"

team:
    - {
      name: "Anne Marie Cunningham",
      photo: "amc.jpg",
      bio: "GP and Primary Care Clinical Director at Aneurin Bevan University Health Board",
      social: {
          twitter: "http://twitter.com/amcunningham"
          }
        }
    - {
      name: "Matt Stibbs",
      photo: "matts.jpg",
      bio: "Digital health tech and product person, and long-standing geek :)",
      social: {
          twitter: "http://twitter.com/mattstibbs"
          }
        }
---

<div class="team-members">
{% for member in page.team %}
    <div class="member">
        <img src="/assets/images/team/{{ member.photo }}" alt="{{ member.name }}">
        <span class="name">{{ member.name }}</span>
        <span class="bio">{{ member.bio }}</span>
        <div class="social">
            {% if member.social.facebook %}<a class="fa fa-facebook" href="{{ member.social.facebook }}"><span>Facebok</span></a>{% endif %}
            {% if member.social.twitter %}<a class="fa fa-twitter" href="{{ member.social.twitter }}"><span>Twitter</span></a>{% endif %}
            {% if member.social.linkedin %}<a class="fa fa-linkedin" href="{{ member.social.linkedin }}"><span>LinkedIn</span></a>{% endif %}
            {% if member.social.github %}<a class="fa fa-github-alt" href="{{ member.social.github }}"><span>GitHub</span></a>{% endif %}
        </div>
    </div>
{% endfor %}
</div>
