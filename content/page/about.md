---
title: "About Me"
url: "/about"
---

I'm Juri Strumpflohner, a <span id="age"></span> years old software developer. Currently I work as a software architect and frontend developer at [R3-GIS](https://www.r3-gis.com/), [here in beautiful South Tyrol (Italy)](https://www.youtube.com/watch?v=YVFzw9QJegk&fmt=22) where my main tasks are on the frontend, doing JavaScript, TypeScript, AngularJS and Angular. I'm a [Google Developer Expert in Web Technologies](https://developers.google.com/experts/people/juri-strumpflohner), an [Egghead Instructor](https://egghead.io/instructors/juri-strumpflohner) and happen to organize the [Software Craftsmanship Meetup](http://www.meetup.com/Software-Craftsmanship-SouthTyrol/).

I'm also a freelance trainer and consultant, so feel free to <a href="#contact">contact me</a>.

<figure class="image--full">
  <a href="/about/imgs/speaking.jpg" class="image--zoom">
    <img src="/about/imgs/speaking.jpg" />
  </a>
</figure>

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

Here are some of my public speaking events. Find more details [here](/page/speaking/).

## Free time

In my free time I'm a passionate martial arts practitioner. I've been practicing Yoseikan Budo for roughly over 17 years now. I'm the owner of a 3rd Dan black belt and I also regularly teach martial arts classes.

![](/about/imgs/katana.jpg)
