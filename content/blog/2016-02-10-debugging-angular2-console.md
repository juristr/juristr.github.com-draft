---
title: Debugging Angular Applications from the Console
lead: >-
  Learn how to access useful information from your Angular components right from
  your browser's console
category: angular2
lastupdated: '2016-04-17'
categories:
  - JavaScript
  - Angular
reposts:
  - 'https://dzone.com/articles/learning-angular-2-creating-a-tabs-component'
date: 2016-02-10T01:00:00.000Z
comments: true
url: /blog/2016/02/debugging-angular2-console
type: post
image: /blog/assets/imgs/ng2-console-debugging/debugging-ng2-apps.png
---

<div class="article-intro">
    There have been some quite useful articles for <a href="http://blog.ionic.io/angularjs-console/" target="_blank">how to debug Angular 1.x applications from the browser's console</a>. But how can we achieve the same in Angular? Is there even a way? Let's see.
</div>

{{< postad >}}

{{<warn-notice message="$1" >}}
 

{{< toc >}}

I always found it quite neat how to debug my Angular 1.x applications directly from my browser's console. Take Chrome's devtools for instance. You can open the Elements tab and click on your Angular component. The nice thing about the Chrome devtools is that it'll keep a reference to the selected DOM node in the variable `$0` which you can then directly access from the console.

<figure class="image--medium">
    <a href="/blog/assets/imgs/ng2-console-debugging/devtools-elements-tab.gif" class="image--zoom">
        <img src="/blog/assets/imgs/ng2-console-debugging/devtools-elements-tab.gif" />
    </a>
</figure>

From there in Angular 1.x you can simply write..

```
> angular.element($0).scope()
```

..to access the `$scope` of that directive and interact with that object accordingly. Similarly you can get hold of the dependency injector for fetching services etc. But more on that [in this article on the official Ionic blog](http://blog.ionic.io/angularjs-console/).

## Enabling/Disabling Debugging

> **Note**, if you're using Angular beta.02 or lower, you have to explicitly activate debugging by importing the `ELEMENT_PROBE_PROVIDERS` from `angular2/platform/browser` and pass it as provider to your `bootstrap` function.

By default debugging is enabled in Angular applications. In fact when you run your app you might see a log in your console saying something like:

_"Angular is running in the development mode. Call enableProdMode() to enable the production mode."_

Hence, whenever you deploy your application in a production environment you should **disable debugging information** and switch into **production mode**. You can do it like this:

```
...
import { enableProdMode } from '@angular/core';

// enable production mode and thus disable debugging information
enableProdMode();

bootstrap(HelloAngular2, [])
    .catch(err => console.error(err));
```

> Note, the same **[holds for your Angular 1.x apps](/blog/2015/12/perf-startup-ng1/)**.

## Inspect the Component state

The interesting part is to inspect the current state of our rendered component. We can do this by again selecting our component in the elements tab and then executing the following in the console.

```
> ng.probe($0)
```

Expand the result object in the devtools and navigate through it. There are are a couple of interesting things being exposed to you. Most interestingly, we can get a **reference to the instance of our component class** using..

```
> ng.probe($0).componentInstance
```

Once we have that instance, we can interact with it, like changing the name property in the case of our simple hello world component example.

<figure class="image--medium">
    <a href="/blog/assets/imgs/ng2-console-debugging/debug-componentinstance.gif" class="image--zoom">
        <img src="/blog/assets/imgs/ng2-console-debugging/debug-componentinstance.gif" />
    </a>
</figure>

Strange enough, the UI won't reflect our changes. Well remember `$digest()` :wink:. Angular has a similar, but more advanced mechanism. Anyway, without going into the details, we need to **invoke that change detector**.

I dug through the [Angular source](https://github.com/angular/angular) and this was the best way I could come up with to activate the change detection mechanism:

```
> ng.probe($0)._debugInfo._view.changeDetectorRef.detectChanges()
```

Not sure if you noticed, but we invoked the change detector on our selected Angular component (`$0`) and not globally. This is because **change detection is hierarchical**, hence, **every Angular component get its own change detector**. [Victor Savkin](https://twitter.com/victorsavkin) has written an [awesome post on this](http://victorsavkin.com/post/110170125256/change-detection-in-angular-2).

Here's the result of executing the change detector:

<figure class="image--medium">
    <a href="/blog/assets/imgs/ng2-console-debugging/debug-detectchanges.gif" class="image--zoom">
        <img src="/blog/assets/imgs/ng2-console-debugging/debug-detectchanges.gif" />
    </a>
</figure>

## Augury (formerly: Batarangle)

<figure class="image--medium">
    <a href="https://augury.angular.io/">
        <img src="/blog/assets/imgs/ng2-console-debugging/augury.png" />
    </a>
</figure>

If you're not the console type of guy, you may appreciate the visual debugging tool [Augury from Rangle.io](https://augury.angular.io/), which is now also the officially supported Chrome devtool extension for Angular :smiley:.

<figure class="image--medium">
    <a href="/blog/assets/imgs/ng2-console-debugging/augury-screenloop.gif" class="image--zoom">
        <img src="/blog/assets/imgs/ng2-console-debugging/augury-screenloop.gif" />
    </a>
</figure>

## Conclusion

That's it. I'll try to keep this article updated and even extend it with further debugging possibilities as Angular evolves towards its final release. Also, if you have any suggestions/improvements, as always, comment!

Btw, you can use my [Angular playground setup](https://github.com/juristr/angular2-playground) to test out these features.

---

**Related articles**

- [Change detection in Angular](http://victorsavkin.com/post/110170125256/change-detection-in-angular-2)
- [Change and its detection in JavaScript frameworks](http://teropa.info/blog/2015/03/02/change-and-its-detection-in-javascript-frameworks.html)
- [Angular Change Detection Explained](http://blog.thoughtram.io/angular/2016/02/22/angular-2-change-detection-explained.html)
