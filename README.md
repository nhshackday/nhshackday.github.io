# nhshackday.github.io

## Suggested workflow for making changes to this site
* fork the site to your own GitHub account
* clone your fork locally
* make your changes (see guide below, looking at the code for previous events is often very helpful)
* `git commit` and `git push` to your repo
* create a Pull Request on GitHub
* One of the NHSHD committers will merge it when happy

## Suggested way to test Pull Requests on our staging site
To push the content of a Pull Request to our staging site for testing:
```
cd WHEREVER_ON_LOCAL_MACHINE

git checkout -b TEMP_BRANCH_NAME_TO_HOLD_THIS_PR

git pull https://github.com/YOUR_GITHUB_USERNAME/nhshackday.github.io.git BRANCH_NAME_IN_THE_PR

git remote add staging git@github.com:newNHSHackdaySite/newNHSHackdaySite.github.io

git checkout -b NEW_BRANCH_NAME_TO_PUSH_TO_STAGING_SITE

rm CNAME

git commit -a -m "Kill CNAME for staging"

git push staging YOUR_GITHUB_USERNAME-NEW_BRANCH_NAME_TO_PUSH_TO_STAGING_SITE:master -f
```

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


### new events and placeholders
tickets:
date_end blank
date: moth of tbc cleared after date set

### Editing Menu
_data/menu.yaml

### linking
[Top 10 tips for awesome pitches]({% link _blog/2017-11-15-10-tips-for-awesome-pitches.md %})


{{ "/assets/style.css" | relative_url }}

### sponsors

### adding projects

### adding events

### short links

### common short links
pitch
show-and-tell

### To set-up initially after cloning repo:

```
gem install bundler
bundle install
```

### To compile with Jekyll:

```
bundle exec jekyll serve
```

For more info on using Jekyll (GitHub Pages variety) locally see: https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/