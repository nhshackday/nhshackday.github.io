---
title: "Team"
subtitle: "Some of the people behind NHS Hack Day"
header_image: graphics_img.jpg
image_credit: 
  - Credit: "Paul Clarke"
    URL: "http://paulclarke.com"
    Licence: "CC BY-NC"

team:
    - {
        name: "Carl Reynolds",
        photo: "carl.jpg",
        bio: "Founder of NHS Hack Day, NIHR Academic Clinical Fellow at Imperial College Healthcare NHS Trust",
        social: {
            twitter: "https://twitter.com/drcjar"
            }
        }
    - {
        name: "David Miller",
        photo: "david.jpg",
        bio: "Managing Director, Open Healthcare UK",
        social: { 
            twitter: "https://twitter.com/thatdavidmiller"
            }
        }
    - {
        name: "Anne Marie Cunningham",
        photo: "amc.jpg",
        bio: "GP and Primary Care Clinical Director at Aneurin Bevan University Health Board",
        social: {
            twitter: "http://twitter.com/amcunningham"
            }
        }
    - {
        name: "Helen Jackson",
        photo: "helen.jpg",
        bio: "Grad-entry medical student at King's College London, RCPsych Pathfinder Fellow, researcher",
        social: {
            facebook: "https://www.facebook.com/helenmaryjackson", 
            twitter: "https://twitter.com/deckofpandas",
            linkedin: "https://uk.linkedin.com/in/helenmaryjackson",
            github: "https://github.com/DeckOfPandas"
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
