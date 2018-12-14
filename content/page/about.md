---
title: "About Me"
url: "/about"
---

I'm Juri Strumpflohner, a <span id="age"></span> years old software developer. Currently I work as a software architect and frontend developer at [R3-GIS](https://www.r3-gis.com/), [here in beautiful South Tyrol (Italy)](https://www.youtube.com/watch?v=YVFzw9QJegk&fmt=22) where my main tasks are on the frontend, doing JavaScript, TypeScript, AngularJS and Angular. I'm a [Google Developer Expert in Web Technologies](https://developers.google.com/experts/people/juri-strumpflohner), an [Egghead Instructor](https://egghead.io/instructors/juri-strumpflohner) and happen to organize the [Software Craftsmanship Meetup](http://www.meetup.com/Software-Craftsmanship-SouthTyrol/).

I'm also a freelance trainer and consultant, so feel free to <a href="#contact">contact me</a>.

![](/about/imgs/about-angular2.png)

<script>
(function() {
  // calculates my age
  var date1 = new Date("5/15/1985");
  var date2 = new Date();
  var timeDiff = Math.abs(date2.getTime() - date1.getTime());
  //var diffDays = Math.ceil(timeDiff / 1000 / 60 / 24 / 365);

  var diff = timeDiff / 1000;
  var seconds = Math.round(diff % 60);
  diff /= 60;
  var minutes = Math.round(diff % 60);
  diff /= 60;
  var hours = Math.round(diff % 24);
  diff /= 24;
  var days = Math.round(diff % 365);
  diff /= 365;
  var years = parseFloat(Math.round(diff * 100) / 100).toFixed(2);

  document.getElementById('age').innerHTML = years;
})();
</script>

## Contact
<a name="contact"></a>

Feel free to [ask me any question on my AMA repo](https://github.com/juristr/ama) or simply drop me a line at {% include email.html %}.

I'm also available on these social networks: {% include social_icons %}


## Current Interests
<a name="interests"></a>

I'm always learning and in search for new challenges. Here are some of my current fields of interest.

{% assign interests = "Angular 1.x,Angular 2,Progressive Web Applications,Node.js,Docker,Microservices,Distributed architectures" | split: "," %}
<div class="tags">
  {% for tag in interests %}
  <a href="javascript:;">{{ tag }}</a>
  {% endfor %}
</div>

<a name="egghead"></a>

## Egghead Instructor

Starting with May 2017 I'm now officially an [Egghead.io Instructor](https://egghead.io/). Sharing my knowledge, engaging with the community and teaching has become a passion for me. That's ultimately the reason why I created this blog or why [I co-founded a Meetup group](http://www.meetup.com/Software-Craftsmanship-SouthTyrol/). Egghead gives me the flexibility to bring this to a completely new level, allowing me to reach an even broader audience.

Check out [my video lessons](https://egghead.io/instructors/juri-strumpflohner).

## Public Speaking

Here are some of my public speaking events. Find more details [here](/about/timeline/).

- [**ngTalks 2018**](https://ngvikings.org/) (August 2018) - "Supercharge your Angular forms!"  
Slides: [GSlides](https://www.youtube.com/redirect?q=https%3A%2F%2Ft.co%2Fz7dX6vDi0R&redir_token=fKzm0zkGT7CNvkI6A1HIu33pAlh8MTUzOTA4NzI1M0AxNTM5MDAwODUz&event=video_description&v=XYFrWkzHVxw)   
Talk: [Youtube](https://www.youtube.com/watch?v=XYFrWkzHVxw)
- [**Podcast: My Angular Story**](https://devchat.tv/my-angular-story/mas-045-juri-strumpflohner/) (August 2018) - I was a guest at the Adventures in Angular Podcast's special edition "My Angular story", talking how I got into programming and ultimately into Angular and frontend dev.
- [**Podcast: AiA Angular Libraries with Juri Strumpflohner**](https://devchat.tv/adv-in-angular/aia-193-angular-libraries-with-juri-strumpflohner) (June 2018) - I was a guest at the Adventures in Angular Podcast where we talked about Angular Libraries.
- [**ngVikings 2018**](https://ngvikings.org/) (March 2018) - 2nd, improved version of my talk about "Create and publish Angular libs like a PRO".  
Slides: [GSlides](https://docs.google.com/presentation/d/1TY2wDLWvbY9hxuhXxFLMY6xfrpdmpMnsTflipEwtsiI/edit#slide=id.g2b6eab8706_0_12)   
Talk: [Youtube](https://www.youtube.com/watch?v=Tw8TCgeqotg)
- [**NG-BE 2017**](https://ng-be.org/) (December 2017) - I spoke about "Create and publish Angular libs like a PRO".  
Slides: [https://t.co/IaKeBHK2nU](https://t.co/IaKeBHK2nU)   
Talk: [Youtube](https://www.youtube.com/watch?v=K4YMmwxGKjY)
- [**ngAir 110 - The TIL Episode #3**](https://www.youtube.com/watch?v=dgzgO5pB090) (April 2017) - I joined the [Angular Air](http://angularair.com/) TIL (Today I learned) episode, presenting some of new features that have been added in Angular version 4.0.0 as well as about Angular on the server side with Angular Universal.
- [**Testing with Angular**](https://www.youtube.com/watch?v=Uw_XomCJaGQ) (January 2017) - A talk for [Hamburg AngularJS Meetup](https://www.meetup.com/Hamburg-AngularJS-Meetup/) on recipes for testing with Angular (2+).
- [**AngularBeers: Interviewing Igor Minar and Adam Bradley**](https://www.youtube.com/watch?v=i2XloM6Q5wc) (December 2016) - I was given the opportunity to moderate the AMA session with Igor Minar and Adam Bradley for [AngularBeers](https://angularbeers.org/).
- [**Angular 2 Special**](https://www.meetup.com/Software-Craftsmanship-SouthTyrol/events/230807221/) (May 2016)- Introducing interested software developers to Angular 2. The event consisted of a short 20min introductory talk followed by a guided exercise where developers were given the opportunity to write their first Angular 2 apps. You couldn't attend? I later created an intro video out of the exercise which you can watch yourself: [Ready to create your first Angular app? Let's do it together. (Angular 2+) ](https://www.youtube.com/watch?v=fXHyqSIIF9Q)

## Partnership

I had a partnership with the following sites, wherefore posts might also get re-published there.

- [DZone](http://www.dzone.com/users/juristr)
- Java Code Geeks
- .Net Code Geeks

## Free time

In my free time I'm a passionate martial arts practitioner. I've been practicing Yoseikan Budo for roughly over 17 years now. I'm the [owner of a 2nd Dan black belt](/blog/2012/10/2nd-dan-yoseikan-budo/) and I also regularly teach martial arts classes.

![](/about/imgs/katana.jpg)
