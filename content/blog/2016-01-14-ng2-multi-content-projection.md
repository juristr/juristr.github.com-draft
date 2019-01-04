---
title: Multi Content Projection aka Multiple Transclusion
lead: How named/multi-slot transclusion works in Angular
show_img_in_detail: true
lastupdated: '2016-06-14'
coverimage: false
category: angular2
categories:
  - JavaScript
  - Angular
reposts:
  - >-
    https://dzone.com/articles/multi-content-projection-aka-multiple-transclusion
date: 2016-01-14T01:00:00.000Z
comments: true
url: /blog/2016/01/ng2-multi-content-projection
type: post
---

{{< postad >}}

If you're an AngularJS developer, I'm sure you heard about **transclusion**. Sounds really weird and mysterious, at least that's what I thought when I first heard it.

If you google for it, you'll probably land on one of [Thoughtram's articles](http://blog.thoughtram.io/angular/2015/11/16/multiple-transclusion-and-named-slots.html) (as you'll do 90% of the time if you search for Angular articles :wink:). This one is about multiple transclusion and named slots which is available in Angular 1.5.  
What it does is to allow you to basically specify multiple regions within your component's template, which can be provided by the component user. This is a huge improvement as previously you had to do a couple of hacks to arrive to the same result.

**But what about Angular version 2+, I thought**, and so I tweeted:

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">Is multiple slot &quot;transclusion&quot; already possible in <a href="https://twitter.com/hashtag/angular2?src=hash">#angular2</a>? //cc <a href="https://twitter.com/gdi2290">@gdi2290</a> <a href="https://twitter.com/AngularClass">@AngularClass</a></p>&mdash; Juri Strumpflohner (@juristr) <a href="https://twitter.com/juristr/status/687740501299212288">January 14, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

And here we go.

```javascript
//our root app component
import {Component} from '@angular/core'

@Component({
  selector: 'multi-content',
  template: `
    <h3>Demoing content projection</h3>
    <div class="box">
      <ng-content select="[header]"></ng-content>
    </div>
    <div class="box">
      <ng-content select="[body]"></ng-content>
    </div>
  `,
  styles: [
    `
    .box {
      min-height: 30px;
      border: 1px solid black;
      display: block;
    }
    `
  ]
})
export class ContentProjectionComponent {}
```

We use `<ng-content>` alone if we don't have the need for **multiple content projection** (as it's apparently called in Angular). Otherwise, we can use the `select` property:

```html
...
<ng-content select="[header]"></ng-content>
...
```

The component user can then define which content goes where:

```html
<multi-content>
    <div header>This is projected to the header region</div>
    <div body>This goes to the body instead</div>
</multi-content>
```

Try it out yourself:

<!-- <iframe src="https://embed.plnkr.co/2UuSqSQt2CCRyhul1aNr/" width="100%" height="400px"> </iframe> -->

 {{<stackblitz uid="edit/angular-multi-contentprojection">}}
 

Another example of a **collapsible panel** component:

 {{<stackblitz uid="edit/angular-contentprojection-collapsiblepanel">}}
 
