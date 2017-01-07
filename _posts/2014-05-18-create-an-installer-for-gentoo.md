---
layout: post
title: Create an Installer for Gentoo
date: 2014-05-18 18:20:00.000000000 -04:00
categories: []
tags: []
status: publish
type: post
published: true
comments: true
---
<div dir="ltr" style="text-align:left;">
<div class="western">As with many linux distributions gentoo provides Live CDs which can be used to try out gentoo and install it. Gentoo offers two Live CDs one is a complete is with a GUI and the other is a minimal-install CD with only the tools needed to install Gentoo. These instructions will create gentoo's minimal install cd.</p>
<p>There are three steps to creating a Live CD for most Linux distributions: download the files, check the integrity of the files, and create and install medium. This example will create a usb stick with gentoo's minimal install CD on it.</p></div>
<h2 style="text-align:left;">Download the Files</h2>
<div class="western">First the iso file and digest file must be downloaded. This can be accomplished by going to gentoo.org, clicking the get Gentoo link, and following the links to download the minimal install iso along with the digest file.</div>
<h2 style="text-align:left;">Check File Integrity</h2>
<div class="western">To check the integirty of the iso file first open the DIGEST file in a text editor and remove everything but the hashcode for the method you will be using to check the iso file. This is an example of checking the sha512 hash.</div>
<div class="western" style="margin-bottom:0;"></div>
<div class="separator" style="clear:both;text-align:center;"><a href="/images/2-editdigestfile.png" style="margin-left:1em;margin-right:1em;"><img border="0" src="/images/2-editdigestfile.png" /></a></div>
<div class="western"></div>
<div class="western">Next open a terminal and check the integrity of the iso file.</p>
</div>
<div class="separator" style="clear:both;text-align:center;"><a href="/images/3-checkdigest.png?" style="margin-left:1em;margin-right:1em;"><img border="0" src="/images/3-checkdigest.png?w=300" /></a></div>
<div class="western"></div>
<div class="western">If the file is OK then it is valid and can be used for the installation.</div>
<h2 style="text-align:left;">Create Install Medium</h2>
<div class="western" style="margin-bottom:0;">The next step is to either burn the iso file to a cd or write it to a usb drive. Burning a CD can be performed with any program that can burn an image. Here is an example of burning the image using brasero:</p>
</div>
<div class="separator" style="clear:both;text-align:center;"><a href="/images/4-burncd.png" style="margin-left:1em;margin-right:1em;"><img border="0" src="/images/4-burncd.png" /></a></div>
<div class="western" style="margin-bottom:0;"></div>
<div class="western" style="margin-bottom:0;">This is an example of writing the iso to a usb drive using usb-imagewriter:</p>
</div>
<div class="separator" style="clear:both;text-align:center;"><a href="/images/6writeimageusb.png" style="margin-left:1em;margin-right:1em;"><img border="0" src="/images/6writeimageusb.png" height="126" width="400" /></a></div>
<div class="western" style="margin-bottom:0;">
<h2>Boot the System</h2>
<p>Once the installer is ready the next step is to boot into it.</p>
<div class="separator" style="clear:both;text-align:center;"><a href="/images/2014-04-0619-28-30.jpg" style="margin-left:1em;margin-right:1em;"><img border="0" src="/images/2014-04-0619-28-30.jpg" height="225" width="400" /></a></div>
</div>
<div class="western" style="margin-bottom:0;">Note: There is another option for building Gentoo on a usb drive manually at <span style="color:navy;"><span lang="zxx"><u><a href="https://wiki.gentoo.org/wiki/LiveUSB/HOWTO">https://wiki.gentoo.org/wiki/LiveUSB/HOWTO</a></u></span></span>. There are two advantages with this method. First all the space on the usbdrive can be used and second the extra space can be used to install applications and change the configuration.</div>
</div>