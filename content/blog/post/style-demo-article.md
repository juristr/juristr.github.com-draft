---
title: "Article Design Demo"
lead: "Lead bla bla"
date: 2017-08-14T16:50:20+02:00
tags: [ "Angular" ]
draft: true
---

{{% article-intro %}}Demo article showcasing the various things you can use on this blog here.{{% /article-intro %}}

{{< postads >}}

Intros as seen above, are wrapped with the `.article-intro` class.

## Images

Images can be added in a variety of ways.

**Wide images**

<figure class="image--wide">
    <img src="https://d262ilb51hltx0.cloudfront.net/max/1067/1*0nMN9zMCyIDhnjbzRgeIlw.jpeg" >
    <figcaption>Sample img</figcaption>
</figure>

```html
<figure class="image--wide">
    <img src="..." >
    <figcaption>Sample img</figcaption>
</figure>
```

Images can also be **full-sized**

<figure class="image--full">
    <img src="https://d262ilb51hltx0.cloudfront.net/max/1067/1*0nMN9zMCyIDhnjbzRgeIlw.jpeg" >
    <figcaption>Full sample img</figcaption>
</figure>

```html
<figure class="image--full">
    <img src="..." >
    <figcaption>Full sample img</figcaption>
</figure>
```

Note, add zooming like this:

<a href="https://d262ilb51hltx0.cloudfront.net/max/1067/1*0nMN9zMCyIDhnjbzRgeIlw.jpeg" class="image--zoom">
    <img src="https://d262ilb51hltx0.cloudfront.net/max/1067/1*0nMN9zMCyIDhnjbzRgeIlw.jpeg">
</a>

```html
<a href="/blog/assets/imgs/us2015/jump.jpg" class="image--zoom">
    <img src="/blog/assets/imgs/us2015/jump.jpg">
</a>
```

Other variations:

- `.image--small` for small sized images.
- `.image--medium` for medium sized images.
- `.image--left` for having the text flow on the right

Example

```html
<figure class="image--medium">
    <a href="/blog/assets/imgs/us2015/ourcar.jpg" class="image--zoom">
        <img src="/blog/assets/imgs/us2015/ourcar.jpg">
    </a>
    <figcaption>Our massive car!</figcaption>
</figure>
```

Library used: [Fluidbox](http://www.jqueryscript.net/demo/Medium-Style-jQuery-Image-Enlargement-Plugin-Fluidbox/)

## Blockquotes

A plain normal blockquote looks like this.

<blockquote>
    At that moment, shitty tempura was the worst thing in my life.
</blockquote>

A more emphasized blockquote is written like this

```html
<blockquote class="emphasized">I'm super emphasized!</blockquote>
```

and looks like

<blockquote class="emphasized">I'm super emphasized!</blockquote>

## Emphasizing

Simple use the `em` tag:

<em>This is an emphasized part of the text</em>

## Notes

...

## Code

Simply us the standard approach using in Markdown docs.

```javascript
function someJSFunction() {
    var x = 'Hi there';
}
```

```html
<h1>Test</h1>
```