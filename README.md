---
title: README
---
# nhshackday.github.io

Welcome to the _new_, new NHS Hack Day website. This is a rebuild of the older [Jekyll](https://jekyllrb.com/) site that was last refreshed in ?January 2016. There is little that has changed from a design perspective (there has been a metaphorical "lick of paint" for more consistent styling, better responsive/mobile design and some changes to how projects are displayed) but the underlying structure, templates and CSS have undergone a complete rebuild.

This `README` is broken into a few sections for ease of use:
- [Day-to-day Tasks](#day-to-day-tasks) (e.g adding events, sponsors, projects, blog posts)
- [Detailed Documentation](#detailed-documentation) of templates and options
- [Technical Details](#technical-details) (how to contribute, set-up locally, create pull requests and how some of CI magic is wired up) 

---

## Day-to-day Tasks
- [Adding an Event](#adding-an-event)
- [Adding a Sponsor to an Event](#adding-a-sponsor-to-an-event)
- [Adding a Project to an Event](#adding-a-project-to-an-event)
- [Adding a Blog Post](#adding-a-blog-post)
- [Adding a `short-link`](#adding-a-short-link)
- [Basic Kramdown and Internal Links](#basic-kramdown-and-internal-links)

### Adding an Event
Events are stored in the `content/_events` directory with a file naming convention as follows: `YYYY-MM-DD-city.md` The site responds dynamically (when it is built) to the dates used automatically listing an event as upcoming or past, for upcoming events without a set date see below on how to use `date_end`.

New event files should contain at a minimum the following YAML [Front Matter](https://jekyllrb.com/docs/frontmatter/) with appropriate substitutions:

```yaml
---
venue: Venue Location       # Venue location displayed as: <Venue>, <City>
city: City                  # City of Hack Day
organiser:                  # List of organisers
  - An Organiser
date: 2018-01-27            # Start date of Event should be same a file prefix formated as `YYYY-MM-DD`
date_end: 2018-01-28        # End date of Event formated as `YYYY-MM-DD` OR describing timeframe e.g `Spring 2018`
hackday: 00-location        # Unique slug for event in form of hackday-location

redirect_from:              # List of alternative urls always caontains `/projects/<hackday>`
  - /projects/00-location/

tickets: http://tickets.com/event       # Link to event managment site, used for `Sign Up` link
pitches: http://forms.com/form          # Destination for the `short-link` at `/pitch`
presentations: http://forms.com/form    # Destination for the `short-link` at `/present`
---
```

Keys should be fairly self explanatory, see previous events for worked examples or the [detailed documentation]() below for other options and values that can be set.

### Adding a Sponsor to an Event
Sponsor are in separate files in the `content/_sponsors` directory, if the sponsor has previously supported an event locate the appropriate file (e.g `content/_sponsors/open_health_care_uk.md`) and edit to add the event and sponsorship value, otherwise create a new file named appropriately containing the following YAML [Front Matter](https://jekyllrb.com/docs/frontmatter/) with appropriate substitutions:

```yaml
---
title: A Sponsor             # Sponsor Name
link: http://website.com     # Sponsor URL
logo: asponsor_logo.png      # Sponsor Logo stored in `/assets/images/sponsors/<logo>`

# Events sponsored denoted by `<hackday>` and sponsorship amount/resource
events:
  01-london: "£100, Venue"
---
```

See the `content/_sponsors/_template.md` or existing sponsors for worked examples or the [detailed documentation]() below.

### Adding a Project to an Event
Projects are in individual files in the `content/_projects` directory in the subdirectory for the specific event (named using the `<hackday>` slug) e.g `content/_projects/01-london/mobile_formulary.md`

Create the appropriate subdirectory if it doesn't exist, and then create a separate file for each project with the following YAML [Front Matter](https://jekyllrb.com/docs/frontmatter/) with appropriate substitutions:

**NB. There are various scripts and scrappers that can be used to automatically generate these file from spreadsheets or the older formats used in previous versions of the NHS Hack Day website**

```yaml
---
hackday: 00-location            # <hackday> slug for event project was presented at
title: Project Name             # Project Name
summary: Short Summary          # Short summary ideally ~50 words
thumbnail:                      # Thumbnail image stored in `/assets/images/projects/<hackday>/<thumbnail>`
header_image:                   # Header image stored in `/assets/images/projects/<hackday>/<header_image>`
image_credit: []                # Image credit remove [] if using and uncomment following lines
#- Credit:
#   URL:
#   Licence:
team:                           # List of (preferably) twitter handles but can include plain-text names
  - "@nhshackday"
email:                          # Email to list on project page for contact
links:
  presentation:                 # Link to presentation used on day 2
  website:                      # Link to live project demo/app/appstore link/etc.
  code:                         # List of links to project source code e.g GitHub 
    - https://github.com/
licence:                        # Licence code/project is released under e.g MIT, GPL etc.
about: "Longer description"     # Longer description 150-200 words can contain Kramdown/Markdown
featured: false                 # If project is featured
---
```

See the `content/_projects/_template.md` or existing projects for worked examples or the [detailed documentation]() below.

### Adding a Blog Post
Blog Posts are stored in the `content/_blog` directory with a file naming convention as follows: `YYYY-MM-DD-post-title.md` The first 50 words of each post are displayed on the the index page along-side the `title` and `subtitle` set in the YAML [Front Matter](https://jekyllrb.com/docs/frontmatter/), at a minimum each file should contain the following:

```yaml
---
title: Title of the Post        # Title of Blog Post
subtitle: Subtitle (optional)   # SubTitle of Blog Post (optinal)
date: 2017-11-15                # Date of Post in format: `YYYY-MM-DD`
authors:                        # List of authors and link (usualy to Tiwtter)
  - name: Author Name
    url : https://twitter.com/handle
header_image: post-2-banner.jpg # Header image stored in `/assets/images/headers/<header_image>`
image_credit: []                # Image credit remove [] if using and uncomment following lines
#- Credit:
#   URL:
#   Licence:
---
```

See existing posts for worked examples or the [detailed documentation]() below.

### Adding a `short-link`
There are some "magic" short links that use information from upcoming events to dynamically change their destination these are: `/pitch` and `/present` which are set using the Front Matter in each event see [above](#adding-an-event).

There are also some "static" short links to useful things, these links are stored in `links` directory as separate files containing the following YAML [Front Matter](https://jekyllrb.com/docs/frontmatter/): 

```yaml
---
layout: link                # Must be set as `link`
permalink: /short           # The short link n.b. be careful not to use the name of an existing page
redirect_to: "http://redirect-to-here.com/" # The location to redirect to
---
```

### Basic Kramdown and Internal Links
The majority of page on the site are written in [Kramdown](https://kramdown.gettalong.org/) (templates a specific pages are written in HTML). Kramdown is a superset of Markdown which is a lightweight markup language with plain text formatting syntax. For a basic guide see the [GitHub Guide](https://guides.github.com/features/mastering-markdown/).

In-order to aid maintainability and prevent broken links is is important to use the following Jekyll syntax when linking internally e.g to a blog post:

{% raw %}
```md
[Top 10 tips for awesome pitches]({% link _blog/2017-11-15-10-tips-for-awesome-pitches.md %})
```

Note that rather than using the URL of the page instead the following is used `{% link path/to/file.md %}` to link to the file.

{% endraw %}

---

## Detailed Documentation

- [Editing the Menu](#editing-the-menu)

### Featured Projects

### Customising upcoming and current event info

`_includes/on-the-day.md`

### Editing the Menu
`_data/menu.yaml`

### Editing Pages

### Available Templates

### Front Matter Keys and Options
defaults


``{{ "/assets/style.css" | relative_url }}``

| Key           | Values                                                            |
| ------------- | ------------------------------------------------------------------|
| venue         | Venue for event. This is displayed alongside the city e.g `Hadyn Ellis Building in Cathays, Cardiff` |
| city          | City the event is held in                                         |
| organiser     | List of event organisers                                          |
| date          | Start date of event, in the form `YYYY-MM-DD`                     |
| date_end      | End date of event, in the form `YYYY-MM-DD` **OR** String placeholder value used to describe timeframe of upcoming events e.g `Spring 2018` |
| hackday       | Unique slug for each event in the form of: `hackday-city` this is used across the site to link projects and sponsor to events. E.g the next event after the example above would be: `20-city`|
| redirect_from | List should always contain an entry in the form: `/projects/<hackday>` This is used to set-up redirects for legacy permalinks and project root directory for each event|
| tickets       | Link to event management site, when present "Sign Up" button on upcoming events will be enabled and link to this address |
| pitches       | Link to pitch sign-up form, when present is used a re-direct destination for the `short-link` at `/pitch` see [below]() for details |
| presentations | Link to presentation sign-up form, when present is used a re-direct destination for the `short-link` at `/present` see [below]() for details |

---

## Technical Details

- [How to contribute changes](#how-to-contribute-changes)
- [How to set-up and run locally](#how-to-set-up-and-run-locally)
- [Travis CI (automatic staging of Pull Requests)](#travis-ci-automatic-staging-of-pull-requests) 
- [Testing on `newNHSHackdaySite.github.io`](#testing-on-newnhshackdaysitegithubio)

### How to contribute changes
The preferred method of contributing is to submit a [Pull Request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/), the easiest way to do this is to [Fork](https://help.github.com/articles/fork-a-repo/) the `nhshackday/nhshackday.github.io` repository make changes to your repository and then submit a Pull Request.

1. [Fork](https://help.github.com/articles/fork-a-repo/) the `nhshackday/nhshackday.github.io.git`
2. Clone and [set-up](#how-to-set-up-and-run-locally) the repository (see below)
3. Make changes (see rest of this `README`)
4. `git commit` your changes to a new [branch](https://help.github.com/articles/creating-and-deleting-branches-within-your-repository/) (e.g `git branch new-stuff`)
5. `git push` your changes back to GitHub
6. Create a [Pull Request](https://help.github.com/articles/creating-a-pull-request-from-a-fork/)

_Remember if you previously cloned the `nhshackday/nhshackday.github.io` repository you should [sync](https://help.github.com/articles/syncing-a-fork/) (e.g `git fetch upstream`) your fork before making changes to avoid conflicts and ensure you are working on the most up-to-date version._

### How to set-up and run locally
Ensure you have a reasonably up-to-date (>2.1.0) version of [Ruby](https://www.ruby-lang.org/en/) installed using your preferred package manager for your chosen operating system. For more info on using Jekyll (GitHub Pages variety) locally see: <https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/>

```bash
# Substitute with the address of your fork if needed
git clone https://github.com/nhshackday/nhshackday.github.io.git
cd nhshackday.github.io.git

# To set-up after initial clone
gem install bundler
bundle install

# To enable `jekyll-compress-images` plugin set:
# export DISABLE_WHITELIST=true

# To lanuch local development server
bundle exec jekyll serve
```

### Travis CI (automatic staging of Pull Requests)
_Note: automatic deployment only works if you have write permissions on the `nhshackday/nhshackday.github.io` repository and create Pull Requests from branches on the repository. This is due to the way [security restrictions](https://docs.travis-ci.com/user/pull-requests/#Pull-Requests-and-Security-Restrictions) on Travis CI works._

To aid the usability of the Jekyll site and inspired by and adapted from [these](https://zonca.github.io/2013/09/automatically-build-pelican-and-publish-to-github-pages.html) [blogs](https://medium.com/onfido-tech/travis-surge-github-auto-deploy-every-pr-branch-and-tag-a6c8c790831f) [Travis CI](https://travis-ci.org/) is used to create and deploy automatic staging builds to [Surge.sh](http://surge.sh).

The magic happens in `.travis.yml` and `_scripts/deploy.sh` for these to work Travis CI needs to be enabled and on the Travis CI [dashboard](https://travis-ci.org/nhshackday/nhshackday.github.io/settings) for the repository under `Settings` and `Environment Variables` the following need to be created:
- `GITHUB_API_TOKEN` set this to the value of a `Personal Access Token` you have [generated](https://github.com/settings/tokens) with appropriately limited scopes e.g. `public_repo` this is used to post a comment to open Pull Requests using the GitHub API with the staging URL.
- `SURGE_LOGIN` set this to the email address of the [Surge.sh](http://surge.sh) account to be used.
- `SURGE_TOKEN` set this to the token issued by `surge token` for the account set in `SURGE_LOGIN`.

### Testing on `newNHSHackdaySite.github.io`
**This is has been superseded by the automatic deployment of Pull Requests to [Surge.sh](http://surge.sh) using [Travis CI](https://travis-ci.org/) see [above](#travis-ci-automatic-staging-of-pull-requests)**

```bash
cd WHEREVER_ON_OUR_LOCAL_MACHINE
git checkout -b TEMP_BRANCH_NAME_TO_HOLD_THIS_PR master
git pull https://github.com/YOUR_GITHUB_USERNAME/nhshackday.github.io.git BRANCH_NAME_IN_THE_PR
git remote add staging git@github.com:newNHSHackdaySite/newNHSHackdaySite.github.io
git checkout -b NEW_BRANCH_NAME_TO_PUSH_TO_STAGING_SITE
rm CNAME
git commit -a -m "Kill CNAME for staging"
git push staging YOUR_GITHUB_USERNAME-NEW_BRANCH_NAME_TO_PUSH_TO_STAGING_SITE:master -f
```