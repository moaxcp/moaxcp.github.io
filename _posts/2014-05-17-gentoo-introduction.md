---
layout: post
title: Gentoo Introduction
date: 2014-05-17 13:10:00.000000000 -04:00
categories: []
tags: []
status: publish
type: post
published: true
comments: true
---
<div dir="ltr" style="text-align:left;">
<div class="western" style="margin-bottom:0;"><span style="color:#00000a;">Gentoo is one of the few linux based operating systems that allows users to build the operating system from the ground up. Being able to choose every part of the operating system, gentoo is extremely customizable. As a result it can be adapted to meet any users needs.</span></div>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;"><span style="color:#00000a;">Old computers usually come with outdated operating system that are vulnerable to attack. By using gentoo a user can ensure an old computer is running a newer, less vulnerable operating system while enjoying all of the useful features linux has to offer.</span></div>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;"><span style="color:#00000a;">One of the goals of gentoo, which sets it apart from all linux distributions, is support for compiling applications before they are installed. Gentoo allows each application to be customized at compile time for the users needs before it is installed through the use of profiles and use flags. Gentoo does this with a program called portage.</span></div>
<div class="western" style="margin-bottom:0;"><span style="color:#00000a;"><br /></span></div>
<div class="western" style="margin-bottom:0;"><span style="color:#00000a;">Compiling applications for the computer it is running on ensures the application is completely optimized for the best possible performance on the computer. Portage allows these optimizations to be set for the compiler so when an application is installed it is optimized with little input form the user. </span><span style="color:#00000a;">This series of posts will describe how to setup gentoo on a Sony VAIO P computer.</span></div>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;"><span style="color:#00000a;">The purpose of this series is to explain how to bring old computers back to life using gentoo. they will explain each step in updating an old sony viao p with a new gentoo operating system and explain how to get each device on the computer working. It will also describe the next steps to consider such as power management, using tmux, and links. The blog posts are not limited to users of a Sony Vaio P computer. They are intended for any user that may wish to bring an old computer back to life with gentoo.</span></div>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;"><span style="color:#00000a;">The series starts with creating a minimal boot cd which is used to install gentoo. </span>The minimal boot cd opens a linux command line environment for the user to work on the system. Since gentoo does not have an installer it needs to be installed manually. This involves all of the commands outlined in these posts.</div>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;">The computer being used for this instruction manual is a Sony Vaio P. There is hardware on this computer that will not function without the drivers being selected in the kernel.</div>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;">Hardware:</div>
<ul>
<li>
<div class="western" style="margin-bottom:0;">PCI-E Ethernet  Controller</div>
</li>
<li>
<div class="western" style="margin-bottom:0;">PCI-E Wireless  Adapter</div>
</li>
<li>
<div class="western" style="margin-bottom:0;">USB Bluetooth  Device</div>
</li>
<li>
<div class="western" style="margin-bottom:0;">Sony Motion Eye  Camera</div>
</li>
<li>
<div class="western" style="margin-bottom:0;">SD and DUO Card  Reader</div>
</li>
</ul>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;">The instructions will select options in the kernel to support these devices.</div>
</div>