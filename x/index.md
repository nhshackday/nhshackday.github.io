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

	<p>
		NHSHD<b>x</b> is an evolution of the long-standing <a href="/">NHS Hack Day</a> series using the NHS 
		Hack Day model to explore more tightly focussed themes and domains.
	</p>
	<p>
		NHSHD<b>x</b> Gloucester is the first event in this series. 
		It gives a chance for Gloucestershire NHS Healthcare professionals to get together and talk about how 
		technology is used in the NHS, as well as the challenges and opportunities it presents. 
	</p>	
	<p>
		Attendees will spend time in small groups thinking about and working on small projects for the benefit 
		of the NHS in Gloucestershire, for professional development, and for fun.
	</p>

<section class="call_to_action" id="signups">
<div class="container">
  <div class="row">
      <h4>Sign up now and join the first NHSHD<b>x</b> experiment.</h4>
      <div class="col-md-6 col-md-offset-3" style="background: #1db8b8; padding: 20px">
        <h2>NHSHDx Gloucester</h2>
        <h5>
          <i class="fa fa-calendar"></i> Thursday May 3, 2018
        </h5>
        <h5>
          <i class="fa fa-map-marker"></i>Gloucester
        </h5>
        <h5>
          <i class="fa fa-user"></i>Hosted and organised by Gloucester Healthcare Community
        </h5>
        <center>
          <p>
            <a class="btn btn-info btn-lg" style="background: #ec652b; margin-top: 40px" target="_blank" href="https://nhshdxgloucester.eventbrite.co.uk/">
              Sign up
            </a>
          </p>
        </center>
      </div>
  </div> <!-- row -->
</div>   <!-- container -->
</section>

<section class="nhshdx-exp">
	
  <p>
	If you're new to NHS Hack Day, welcome to a friendly and committed community!
	NHS Hack Day is a non-profit, community-run event with the goal of helping to make NHS IT better for 
	the benefit of patient health and care. The last 6 years have seen thousands of people come to 
	20 NHS Hack Day events, make new friends and start to tackle some of the thorny issues that
	face the NHS every day.
</p>

<p>
	For a long time the organising team have wondered about how to do more to engage more specific 
	parts of the NHS community while still maintaining our core principles and our commitment to 
	supporting health and care technology in the widest sense.
</p>

<p>
	Many groups have approached the NHS Hack Day team suggesting themed NHS Hack Days, focussing on areas 
	such as "Mental Health", "Physiotherapy" or "VR". Others want to use our platform to reinvigorate 
	their local teams without leaving the context of their day-to-day professional work behind completely.
</p>
<p>
	To try and explore how the NHS Hack Day model might work for more focussed domains,
	NHSHD<b>x</b> is an experimental event - this time with a local theme. The best way to build
	<span style="text-decoration: line-through;"> effective services</span> compelling events is to 
	<a href="https://web.archive.org/web/20140628221103/https://www.gov.uk/design-principles#fifth">
		start small and iterate wildly
	</a>. 
</p>
<p>
	This is iteration 1.
</p>

<p>Some of the things that we are thinking and trying to learn about:</p>

	

		<ul class="ul-normal-size">
		<li>How can <b>local organisations</b> benefit from what we have learned about running hack days?</li>

		<li>How can we support <b>local organisers</b> to run events under our umbrella so our core organising team of volunteers don't have to give up their day jobs to run more than three events per year?</li>

    <li>Can we find a way for <b>local events</b> to use our assets outside the official NHS Hack Day programme without compromising our principles?</li>
		</ul>

    <h2 style="margin: 20px 10% auto 10%"><strong>NHSHDx Gloucester: an experiment in making big things local.</strong></h2>
</section>

<div class="container center">
	<img src="/assets/images/nhshd/with-love.png" height="300px" />
    {% include social.html %}
</div>

</div>
