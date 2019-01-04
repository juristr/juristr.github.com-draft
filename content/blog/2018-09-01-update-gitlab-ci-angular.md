---
title: 'Update: Create a CD pipeline with Angular, GitLab and Firebase'
type: post
target-url: /blog/2018/02/cd-gitlab-angular-firebase/
date: 2018-09-01T00:00:00.000Z
comments: true
url: /blog/2018/09/update-gitlab-ci-angular
---

I recently set up another project on GitLab with Angular and while configuring the CI process to automatically deploy to different staging & production environment on Firebase, I found some missing parts on my [article on "Create a CD pipeline with Angular, GitLab and Firebase](/blog/2018/02/cd-gitlab-angular-firebase/).

Specifically I run into issues where the CI server wasn't able to connect to Firebase. Strange enough however I didn't get any authentication error, but rather errors like "HTTP error: 404, The specified project was not found".

In the end the solution was to **not protect the FIREBASE_DEPLOY_KEY** variable in GitLab, which doesn't mean it will be exposed on the CI server log (which I thought).

<figure class="image--medium">
  <img src="/blog/assets/imgs/cd-gitlab-firebase/gitlab-variables-protect.png">
  <figcaption>Adding the firebase token to GitLab</figcaption>
</figure>
