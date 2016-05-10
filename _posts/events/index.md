---
layout: default
title: Previous events
---
<div class="page-container">


 {% for event in site.categories.events.posts %}
 <div class="container">
   <div class="row">
     {{ event.title }}

     {{event.date}}

     {{ event.summary }}

   </div>
 </div>
</div>
