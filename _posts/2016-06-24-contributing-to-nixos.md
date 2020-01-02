---
title: issues with gradle in nixos
layout: post
---
Nixos comes with [gradle](https://github.com/NixOS/nixpkgs/blob/3e387c3e005c87566b5403d24c86f71f4945a79b/pkgs/development/tools/build-managers/gradle/default.nix) but I have a few problems with it.

# Where to point netbeans?

Since gradle is in the nix-store where do I point netbeans so it knows where gradle is located.

# libnative-platform.so

This file needs to be patched so it can find lib and lib64 directories in nix. This means ./gradlew does not work because gradle always looks in /lib and /lib64. I belieave there is pkg-config on linux to help with this but that means libnative-platform needs to be patched to use pkg-config.
