hello:
  cp -r /etc/nixos ~/dotfiles/
  current=$(nixos-rebuild list-generations | grep current)
  git add .
  git commit -am "$current"
  notify-desktop "Nix OS Rebuilt OK"


