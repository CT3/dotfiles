
edit:
  nvim /etc/nixos/configuration.nix

build:
  ./nixbuild.sh

clean:
  sudo nix-collect-garbage --delete-older-than 3d
  nix-collect-garbage  --delete-old
  sudo nixos-rebuild switch

sync:
  cp -r ../.config/fish .
  cp -r ../.config/wezterm .
  cp -r ../.config/zellij .
  git add .
  git commit -m "sync dotfiles"


