# nhshackday.github.io


The new NHSHackday website


## Adding events

To add an event you should create a new file in the _posts/events/ folder with a filename like: ```YYYY-MM-DD-LOCATION.md```

The following page-matter should be at the top of the file between the  ```---```.

```YAML
---
layout: event
permalink: /previous/events/2014/01/cardiff
title:  "Cardiff"
summary: "Held at the Hadyn Ellis Building in Cathays, Cardiff and organised by Dr Anne-Marie Cunningham."
date:   2014-01-25 00:00:00
date_range:
    - 2014-01-25 00:00:00
    - 2014-01-26 00:00:00
categories: events
label: 2014
blog-posts:
    - BCon.cc at NHSHackday : http://www.webdevbros.net/2014/02/20/cardiff-nhs-hack-day-or-weekend-and-bcon-cc/
    - NHS Hack Day : http://blogs.cardiff.ac.uk/development/2014/01/26/nhs-hack-day/
---

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
| blog-posts  | If wanted, should be a link of dictionaries (hashes) where the key is the label, and the value is the link  |


## Adding projects

To add an event you should create a new file in the _posts/projects/ folder with a filename like: ```YYYY-MM-DD-PROJECTNAME.md```

The following page-matter should be at the top of the file```---```


```YAML
---
layout: post
title:  "iPatch"
summary: "iPatch is an application for tracking the treatment of lazy eyes in children and adults. iPatch is a project from NHS HackDay Cambridge, November 2013."
date:   2014-02-01 17:33:13
categories: projects
logo: ipatch.png
logo-with-name: true
website: http://ipatch.azurewebsites.net/
---
```

| Key  | Values |
| ------------- | ------------- |
| layout  | Always 'post'  |
| title  | The name of the project  |
| summary  | A short description of the project  |
| date  | A date, more recent dates will appear higher up on the page |
| categories  | Always 'projects'  |
| logo  | The filename of an image in /assets/images/projects/, i.e. ipatch.png  |
| logo-with-name  | true if the logo is small enough that it needs the project title next to it, false otherwise (which is the default) |
| website  | The URL to the website for the project |


## Adding sponsors