
edit:
  sudo nvim /etc/nixos/configuration.nix

build:
  ./nixbuild.sh

clean:
  sudo nix-collect-garbage --delete-older-than 3d
  nix-collect-garbage  --delete-old
  sudo nixos-rebuild switch

