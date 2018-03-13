---
layout: default
permalink: /x
title:  "NHSHDx Gloucester"
subtitle: "An NHS Hack Day experiment in going local"
image: /assets/images/nhshdx-banner.jpg
---
<section id="slider_wrapper" class="slider_wrapper full_page_photo">
  <div id="main_flexslider" class="flexslider">
    <ul class="slides">
      <li class="item" style="background-image: url(/assets/images/nhshdx-banner-445k.jpg)">

        <div class="container">
          <div class="carousel-caption">
            <h1>
              <strong>NHSHDx</strong>
              <br />
              NHS Hack Day goes local
              <br />
            </h1>
            <h1 id="lessbad" style="background: #1db8b8">
              Making NHS IT less bad
            </h1>
            <!-- Promoting <strong>good health</strong>, <strong>good practice</strong> and <strong>good science</strong> -->
          </div>
        </div>
      </li> <!-- no more sliders or Helen will get murderous -->
    </ul>
  </div>
</section>

<div class="hgroup centered">
	<div class="container">
		<h1>NHSHD<strong>x</strong> Gloucester</h1>
		{% if page.subtitle %}
			<h5>{{ page.subtitle }}</h5>
		{% endif %}
		<div class="pull-right" align="right">
			<h4>{{ page.date | date: '%B %d, %Y' }}</h4>
			<h5>
			{% for person in page.authors %}
				{% if forloop.last == true %}
					and
				{% endif %}
				<a href="{{ person.url }}" target="_blank">{{ person.name }}</a>
			{% endfor %}	
			</h5>
		</div>
	</div>
</div>
<div class="container">
	<p>The NHS Hack Day model works. Let's take it further.</p>

	<p>NHSHDx is a new local version of the long-standing <a href="/">NHS Hack Day</a> series. NHSHDx Gloucester is a chance for Gloucestershire NHS Healthcare professionals to get together and talk about how we use technology in the NHS and the challenges it presents. You will spend some time thinking about and/or working on small projects both for professional development and for fun.</p>

<section class="call_to_action" id="signups">
<div class="container">
  <div class="row">
    <h4>Sign up now and join the first NHSHDx experiment.</h4>
      <div class="col-md-6 col-md-offset-3" style="background: #1db8b8; padding: 40px 60px">
        <h2>NHSHDx Gloucester</h2>
        <h5>
          <i class="fas fa-calendar-alt"></i> Thursday May 3, 2018
        </h5>
        <h5>
          <i class="fas fa-map-marker-alt"></i>Gloucester
        </h5>
        <h5 style="margin-bottom: 40px">
          <i class="fa fa-users"></i>Hosted and organised by Gloucester Healthcare Community
        </h5>
        <center>
          <p>
            <a class="btn btn-info btn-lg" style="background: #ec652b" target="_blank" href="https://nhshdxgloucester.eventbrite.co.uk/">
              Sign up
            </a>
          </p>
        </center>
      </div>
  </div> <!-- row -->
</div>   <!-- container -->
</section>

<section class="nhshdx-exp">
<p>If you're new to NHS Hack Day, welcome to the friendliest and most committed health tech hackathon community we've ever encountered. NHS Hack Day exists to help make NHS IT better for the benefit of patient health and care. We've run 19 incredible events over the last five or so years. The winds of change are in the air, and we're very proud. See [our main site](/) to find out more.</p>

<p>For a long time the organising team have wondered about how to engage more specific parts of the NHS community while still maintaining our commitment to supporting health and care technology in its widest sense.</p>

<p>We have been approached by many groups who have suggested we run themed NHS Hack Days, such as "Mental Health", "Physiotherapy" or "VR". Others want to use our platform to reinvigorate their local teams without leaving the context of their day-to-day professional work behind completely.</p>

<p>We are thinking about:</p>

<ul class="ul-normal-size">
<li>How can <b>local organisations</b> benefit from what we have learned about running hack days?</li>

<li>How can we support <b>local organisers</b> to run events under our umbrella so our core organising team of volunteers don't have to give up their day jobs to run more than three events per year?</li>

<li>Can we find a way for <b>local events</b> to use our assets outside the official NHS Hack Day programme without compromising our principles?</li>
</ul>

<p>We don't have the answer to these things yet, but it's time to take an empirical approach.</p>

<h2><strong>Enter NHSHDx Gloucester: an experiment in making big things local.</strong></h2>

</section>

</div>

<div class="container center">
	<img src="/assets/images/nhshd/with-love.png" height="300px" />
    {% include social.html %}
</div>