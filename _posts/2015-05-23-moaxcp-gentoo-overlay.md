---
layout: post
title: moaxcp-gentoo-overlay
date: 2015-05-23 01:56:03.000000000 -04:00
categories: []
tags: []
status: publish
type: post
published: true
comments: true
---
<p>I created a <a href="https://github.com/moaxcp/moaxcp-gentoo-overlay">gentoo overlay</a> with the latest version of x11-wm/notion and my own project dev-java/recMD5. Go to the <a href="https://github.com/moaxcp/moaxcp-gentoo-overlay">overlay</a> and follow the README.md for instructions on using the <a href="https://github.com/moaxcp/moaxcp-gentoo-overlay">overlay</a>.</p>
<p>Here are the notes from setting things up.</p>
<p>I'm going through this [url]https://wiki.gentoo.org/wiki/Overlay/Local_overlay[/url] tutorial for creating an overlay. The base directory is</p>
<blockquote><p>/usr/local/portage/moaxcp</p></blockquote>
<p>from the first section</p>
<blockquote><p>mkdir -p /usr/local/portage/moaxcp/{metadata,profiles}<br />
echo 'moaxcp' &gt; /usr/local/portage/moaxcp/profiles/repo_name<br />
echo 'masters = gentoo' &gt; /usr/local/portage/moaxcp/metadata/layout.conf<br />
chown -R portage:portage /usr/local/portage/moaxcp<br />
/usr/local/portage is already owned by portage<br />
mkdir /etc/portage/repos.conf<br />
nano /etc/portage/repos.conf/local.conf</p></blockquote>
<p>add, save and exit</p>
<blockquote><p>[moaxcp]<br />
location = /usr/local/portage/moaxcp<br />
masters = gentoo<br />
auto-sync = no</p></blockquote>
<blockquote><p>mkdir -p /usr/local/portage/moaxcp/x11-wm/notion<br />
nano /usr/local/portage/moaxcp/x11-wm/notion/notion_p2014052800.ebuild</p></blockquote>
<p>add text from [url]https://523566.bugs.gentoo.org/attachment.cgi?id=389597[/url]. The file is called notion-3-2014052800-src.tar.bz2 on sourceforge. Which looks similar to what the ebuild looks for.<br />
save and exit</p>
<p>chown -R portage:portage /usr/local/portage/moaxcp<br />
pushd /usr/local/portage/moaxcp/x11-wm/notion<br />
repoman manifest</p>
<p>now I get</p>
<blockquote><p>Invalid ebuild name: /usr/local/portage/moaxcp/x11-wm/notion/notion_p2014052800.ebuild<br />
&gt;&gt;&gt; Creating Manifest for /usr/local/portage/moaxcp/x11-wm/notion<br />
!!! Invalid package name: 'x11-wm/notion_p2014052800'<br />
Unable to generate manifest.</p></blockquote>
<p>This was caused by the file name not containing the version number. I changed the file name to<br />
notion-3_p2014052800.ebuild and everything worked. Now add a keyword for the protected package so it will emerge.</p>
<p>nano /etc/portage/package.keywords/notion<br />
=x11-wm/notion-3_p2014052800 ~amd64</p>
<p>Or use -a when emerging the package and accept the changes (don't forget to dispatch-conf).</p>
<p>On a side note once the overlay is setup I added everything in the overlay to github and setup the overlay to sync<br />
with github. Now when I do emerge --sync the overlay will sync with github. Any changes I make to the overlay can<br />
by committed using git.</p>
<p>To sync with git I changed the repos.conf/local.conf file</p>
<p>nano /etc/portage/repos.conf/local.conf</p>
<p><code>[moaxcp]<br />
location = /usr/local/portage/moaxcp<br />
sync-uri = https://github.com/moaxcp/moaxcp-gentoo-overlay.git<br />
masters = gentoo<br />
auto-sync = yes<br />
sync-type = git</code></p>
