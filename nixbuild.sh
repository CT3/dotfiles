#!/usr/bin/env bash

  cp -r /etc/nixos ~/dotfiles/
  sudo nixos-rebuild switch
  current=$(nixos-rebuild list-generations | grep current)
  git add .
  git commit -am "$current"
  notify-desktop "Nix OS Rebuilt OK"


