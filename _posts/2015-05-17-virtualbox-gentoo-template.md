---
layout: post
title: VirtualBox Gentoo Template
date: 2015-05-17 03:10:29.000000000 -04:00
categories: []
tags: []
status: publish
type: post
published: true
comments: true
---
<p>I am creating a new virtualbox gentoo instance. This will be used as a template for other gentoo vms on my laptop. For now it will be very basic.</p>
<p>1 cpu<br />
512 MB memory<br />
8 GB harddrive space</p>
<p>Being able to increase the template may be important. I have had problems in the past with increasing cpus in a gentoo vm. Adding memory shouldn't be a problem. Adding harddrive space would be better if I used LVM.</p>
<p>Default apps</p>
<p>So far I only need java and ssh.</p>
<p>make.conf</p>
<p>For now I am using the settings I have on my local computer. This could cause problems with portability especially with cpu flags and the march option (corei7-avx).</p>
<p>Planned uses<br />
1. create a hadoop cluster with accumulo<br />
--Since this is what I use at work<br />
2. create an ingestion server to run pentaho jobs<br />
--Since this is what I do at work<br />
3. create a application server<br />
--This is for all webapps that interact with the accumulo db<br />
--crud/search services/apps</p>