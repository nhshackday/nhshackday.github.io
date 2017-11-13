# nhshackday.github.io


The new NHSHackday website


## Adding events

To add an event you should create a new file in the _posts/events/ folder with a filename like: ```YYYY-MM-DD-LOCATION.md```

if an event is in the future it will show up as the next event, if you want to add an special details of this event edit the _includes/events/on_the_day.html. After the event has happened, push to the repo and the event
will appear as a past event.

The following page-matter should be at the top of the file between the  ```---```.

```YAML
---
layout: event
permalink: /events/2014/01/cardiff
title:  "Cardiff"
summary: "Held at the Hadyn Ellis Building in Cathays, Cardiff and organised by Dr Anne-Marie Cunningham."
date:   2014-01-25 00:00:00
date_range:
    - 2014-01-25 00:00:00
    - 2014-01-26 00:00:00
categories: events
label: 2014
---

you can add an optional background image, by putting the image in assets/images/locations/
and adding a field to the yaml like

background-image: "manchester.jpg"

```

| Key  | Values |
| ------------- | ------------- |
| layout  | Always 'event'  |
| permalink  | Change the year and month values and put the location at the end  |
| title  | The title of the event, normally the city it was held in  |
| summary  | A short description of the venue and organiser  |
| date  | The start date of the event  |
| date_range  | The start and end date of the event  |
| categories  | Always 'events'  |
| label  | If there are two events at the same location in the same year, this will differentiate them. By default should just be the year |
| background-image  | If wanted, should be a filename (without path) for an image in  assets/images/locations/ |
| sponsors  | sponsors should be in sponsorship: sponsor: {{ name of sponsor as referenced in _data/sponsors.yml}} value: - what they gave |
| projects | a teams field should contain the project and any links, if you just use a url: field it will show the url as a link, if you use urls: you can use multiple links of a dictionary form link_name -> link_address, e.g. demo: http://example.com |

please take a look at an example event such as _posts/events/2015-05-16-london.md

## to add a sponsor
sponsors are in _data/sponsors.yml, add a sponsor to the bottom of the file, then add the sponsor to the project
as described above, the project does a look up on the sponsors file based on the sponsor's name
