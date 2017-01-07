---
layout: post
title: Connecting to a WPA Wireless Network From The Gentoo Minimal Install CD
date: 2014-06-01 14:48:00.000000000 -04:00
categories: []
tags: []
status: publish
type: post
published: true
comments: true
---
<div dir="ltr" style="text-align:left;">Connecting to a wpa enabled wireless network can be difficult in the gentoo minimum install cd. Most sources suggest not to use the cd if this is an issue and to use a cd from a different distribution. There is no reason to do this because the minimal install CD comes with wpa_supplicant. wpa_supplicant is the basic tool and library that most network configuration tools for all linux distributions use to connect to wpa networks.</p>
<p>When using the minimal install cd the network card should be configured to use wpa_supplicant and wpa_cli should be used to connect to the network. Using the configuration files that most tutorials show is useless as any changes will only be temporary and will be lost once the system is restarted.</p>
<dl>
<dt>1. Get the wireless interface name</dt>
<dd>
<table style="background-color:black;color:grey;padding:10px;width:100%;">
<tbody>
<tr>
<td>
<pre><span style="color:#cc0000;">livecd</span> <span style="color:#0b5394;">~ #</span> iwconfig<br />lo      no wireless extensions.<br /><br />enp1s0  no wireless extensions.<br /><br />wlp2s0  IEE802.11bgn ESSID:off/any<br />        Mode:Managed Access Point: Not-Associated Tx-Power=15 dBm<br />        Retry long limit:7 RTS thr:off Fragment thr:off<br />        Encryption key:off<br />        Power Management:off<br /></pre>
</td>
</tr>
</tbody>
</table>
</dd>
<dt>2. Use the wireless interface name to create the init script for the interface</dt>
<dd>
<table style="background-color:black;color:grey;padding:10px;width:100%;">
<tbody>
<tr>
<td>
<pre><span style="color:#cc0000;">livecd</span> <span style="color:#0b5394;">~ #</span>  cp /etc/init.d/net.lo /etc/init.d/net.wlp2s0<br /></pre>
</td>
</tr>
</tbody>
</table>
</dd>
<dt>2. Create the init script for the wlp2s0 interface</dt>
<dd>
<table style="background-color:black;color:grey;padding:10px;width:100%;">
<tbody>
<tr>
<td>
<pre><span style="color:#cc0000;">livecd</span> <span style="color:#0b5394;">~ #</span> nano /etc/conf.d/net<br />...<br />modules="wpa_supplicant"<br />wpa_supplicant_wlp2s0="-Dwext -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant.conf"<br />config_wlp2s0="dhcp"<br /></pre>
</td>
</tr>
</tbody>
</table>
</dd>
<dt>4. Edit /etc/wpa_supplicant/wpa_supplicant.conf</dt>
<dd>
<table style="background-color:black;color:grey;padding:10px;width:100%;">
<tbody>
<tr>
<td>
<pre><span style="color:#cc0000;">livecd</span> <span style="color:#0b5394;">~ #</span> nano /etc/wpa_supplicant/wpa_supplicant.conf<br />...<br />ctrl_interface=/var/run/wpa_supplicant<br />ctrl_interface_group=0<br /></pre>
</td>
</tr>
</tbody>
</table>
</dd>
<dt>5. Start the wlp2s0 interface</dt>
<dd>
<table style="background-color:black;color:grey;padding:10px;width:100%;">
<tbody>
<tr>
<td>
<pre><span style="color:#cc0000;">livecd</span> <span style="color:#0b5394;">~ #</span> /etc/init.d/net.wlp2s0 start<br /></pre>
</td>
</tr>
</tbody>
</table>
</dd>
<dt>6. Connect to the network using wpa_cli</dt>
<dd>
<table style="background-color:black;color:grey;padding:10px;width:100%;">
<tbody>
<tr>
<td>
<pre><span style="color:#cc0000;">livecd</span> <span style="color:#0b5394;">~ #</span> wpa_cli&gt;scan<br />CTRL-EVENT-SCAN-RESULTS<br />&gt;scan_results<br />&gt;add_network<br />0<br />&gt;set_network 0 ssid "NetworkName"<br />OK<br />&gt;set_network 0 psk "passphrase"<br />OK<br />&gt;enable_network 0<br />OK<br />&gt;quit<br /></pre>
</td>
</tr>
</tbody>
</table>
</dd>
<dt>7. Test the network with a ping</dt>
<dd>
<table style="background-color:black;color:grey;padding:10px;width:100%;">
<tbody>
<tr>
<td>
<pre><span style="color:#cc0000;">livecd</span> <span style="color:#0b5394;">~ #</span> ping www.google.com<br /></pre>
</td>
</tr>
</tbody>
</table>
</dd>
</dl>
</div>