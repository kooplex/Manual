---
title: Gitea
description: Version control system
published: true
date: 2023-02-21T12:27:31.031Z
tags: public
editor: markdown
dateCreated: 2022-05-13T08:57:41.839Z
---

![](/kooplex-manual/gitea/gitea-logo.svg) Use Version Control system to collaborate and keep a copy and track of your clean code.
You can clone the public repositories via the https link provided by gitea, but you cannot push or access them via ssh. First you'll have to upload an ssh-key. Below there is a description how to do that.

## Use SSH-keys 
### Step 1: generate a key
Some references for windows users: [using putty](https://phoenixnap.com/kb/generate-ssh-key-windows-10) or [ask google](https://www.google.com/search?q=generate+ssh+key+windows&tbm=isch&ved=2ahUKEwjhqsaKpab9AhURlaQKHa5BDJcQ2-cCegQIABAA&oq=generate+ssh+key+windows&gs_lcp=CgNpbWcQAzIHCAAQgAQQEzoECCMQJzoHCAAQgAQQGDoGCAAQHhATOggIABAFEB4QE1DBCFjsHGDeHWgBcAB4AIABswGIAYcJkgEDNy40mAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=UY30Y6G-AZGqkgWug7G4CQ&bih=939&biw=1920&client=ubuntu)
Some references for linux users: [a tutorial](https://betterprogramming.pub/how-to-set-up-multiple-ssh-keys-ae6688f76570), [github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) or [ssh.com](https://www.ssh.com/academy/ssh/keygen)
### Step 2: upload to gitea
Go to `https://gitea.vo.elte.hu/user/settings/keys` and click on the *add-key* button (the one with .pub extension)
![](/kooplex-manual/gitea/upload-key-to-gitea.png)
### Step 3: copy it locally to the right place
If you want to use it on Kooplex, then upload the key to the `/v/<username>/.ssh` folder, which you might have to create first.