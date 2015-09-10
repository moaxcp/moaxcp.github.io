---
title: obnam on gentoo
layout: post
---

My system is a Dell Precision M4600 laptop with gentoo installed. It is great for travel and moving to different rooms in the home. Unfortunately, it does not have full backups. I currently have dropbox for my personal data but after after working on this system for a year, I would like to have backups for the entire system. The solution is to have real backups along with dropbox. 

##Dropbox

I love dropbox but there are a few problems with only using dropbox as a backup system. First, it does not work well with gir repositories. It is a duplicate version control system that sometimes has conflicts. When dropbox has a conflict for a git repository it can be annoying but I really want my repositories to be backed up. Second, if my system goes down I have to download the entire dropbox folder (40+GB). Finally, it doesn't back up the entire system.

This is what I like about dropbox

1. quickly sync with phone (pictures/videos)
2. over the network sync with other computers
3. 30 days of history
4. works anywhere with internet

##The Plan

My plan is to have a backup system that works well for me. Something that doesn't require an external hard drive and allows me to do backups while traveling. Right now I only have an external drive so this is it for now:

1. plug in and mount external drive
2. setup obnam to backup system to drive
3. move git repositories outside of Dropbox folder

In the future:

1. install internal drive (2TB)
2. setup obnam to backup system to drive

If I am able to get a server setup at home:

1. create repository on server
2. setup obnam to backup system to server along with internal drive

Obnam looks like a great system. It has one command with many features. The features I'm interested in are the ease of use and encryption. Eventually, I would like to have my system encrypted and have the backup encrypted as well.

Currently, I have an external 1TB drive to put backups on. It is not ideal because I hate having extra things attached to my laptop but it will let me setup backups without having to buy a new harddrive (I tried taking it apart but the usb is permanently attached to the drive).

##Mounting the drive
