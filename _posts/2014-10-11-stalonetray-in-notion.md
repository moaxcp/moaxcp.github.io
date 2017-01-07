---
layout: post
title: stalonetray in notion
date: 2014-10-11 01:19:00.000000000 -04:00
categories: []
tags: []
status: publish
type: post
published: true
comments: true
---
<div dir="ltr" style="text-align:left;">Currently, stalonetray is installed and running from the .xinitrc file with:<br />
<blockquote>stalonetray --geometry 6x1 --no-shrink --kludges force_icons_size -i 24 &amp;</p></blockquote>
<p>In my current notion layout I have to move stalonetray to a small frame in the lower right hand side of my monitor. I would like to make stalonetray part of the status bar in notion.<br />The first step is to create the config files in ~/.notion.<br />
<blockquote>cp /etc/notion/* .notion</p></blockquote>
<p>Now edit cfg_notion.lua and include<br />
<blockquote>defwinprop {class="stalonetray", statusbar="dock"}</p></blockquote>
<p>Now edit cfg_statusbar.lua and add %systray_dock after %systray on the template line.<br />
<blockquote>template="[ %date || load: %load ] %filler%systray%systray_dock",</p></blockquote>
<p>now when notion starts stalonetray will appear in the statusbar. The only problem I see now is when there is only one frame and it is split virtically, stalonetray is no longer in the lower right corner. I think have this fixed on my sony vaio p which I will look at tomorrow and try to fix.</p></div>
