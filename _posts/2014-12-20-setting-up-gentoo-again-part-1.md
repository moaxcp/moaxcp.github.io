---
layout: post
title: 'Setting up gentoo again: Part 1'
date: 2014-12-20 21:24:30.000000000 -05:00
categories: []
tags: []
status: publish
type: post
published: true
comments: true
---
<p>Recently I decided to reinstall gentoo. The first install went well but I would like to switch the system to use raid 0, GPT, and LVM on LUKS. Setting up the hard drives is the primary reason for doing a complete reinstall. I also want to setup X with LXDM, LXDE, and notion. I really like notion but I do not want to build an entire desktop environment around it.</p>
<p>LVM on LUKS uses only one key to access the system.</p>
<p>LVM cannot span multiple volumes in this case. Since I am using raid 0 on my two hard drives this will not be a problem and my system will never expand beyond two hard drives.</p>
<h3><strong>Backup Everything</strong></h3>
<p>I made a script that copies /etc and the kernel config to my dropbox folder. This will be used as a reference to help configure the kernel and applications. In the future, on the new setup, this should be setup as a cron job to back things up in case something happens. Configuring the system is a lot of work and I do not want to lose it.</p>
<h3><strong>Create a System Rescue CD boot disk.</strong></h3>
<p>I decided to use System Rescue CD because it is recommended by others on the gentoo forum. Also in the first install of gentoo I could not setup gpt and grub with the minimal install cd. Instead I had to use mbr and grub. These instruction can be found at <a title="sysresccd.org" href="http://www.sysresccd.org">sysresccd.org</a>.</p>
<h3><strong>Raid 0</strong></h3>
<p>Turning on Raid 0 can be done in the bios.</p>
<ol>
<li>start up the system and press F2</li>
<li>go to Settings -&gt; System Configuration -&gt; SATA Operation</li>
<li>Set SATA Operation to RAID On</li>
<li>Press Apply and Exit</li>
</ol>
<p>Now that raid is on a new menu will appear at startup after the bios screen. Press CTRL + I to open the raid screen. On this menu simply create a RAID Volume with the settings that you would like.</p>
<ol>
<li>Select Create RAID Volume</li>
<li>Use default settings (RAID0, Strip Size 128KB)</li>
<li>Select Create Volume</li>
<li>Enter y to create the volume</li>
</ol>
<h3><strong>In The End...</strong></h3>
<p>The raid that comes with my system is called a fakeraid. This means that it is really a software raid implemented in the firmware. It allows for a software raid to be setup that can be recognized between different operating systems. If I were to setup a dual boot system they raid could be shared between them. Since I am not doing this I decided to go with a software raid implemented in the linux kernel.</p>
<p>The plan now is to have a software raid 0 to combine the drives into one volume, use luks to encrypt it, and use lvm to do volume management (add, remove, resize partitions).</p>
<p>In the next post I will cover this setup.</p>