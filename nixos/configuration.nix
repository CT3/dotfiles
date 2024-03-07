# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
    # Laptops
 powerManagement.enable = true;
  services.thermald.enable = true;
#   powerManagement.powertop.enable = true;
  #services.tlp.enable = true;


  hardware.logitech.wireless.enable = true;#Logitec mouse solaar
  hardware.saleae-logic.enable = true;

  environment.variables.EDITOR = "nvim";
 #Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  #networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Vilnius";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Configure console keymap
  console.keyMap = "us";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.mantas = {
    isNormalUser = true;
    description = "Mantas";
    extraGroups = [ "networkmanager" "wheel" "dialout" "vboxusers" "plugdev"];
    packages = with pkgs; [
    ];
  };

  # Enable automatic login for the user.
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "mantas";

  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [ "electron-25.9.0" ];

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
	#sabnzbd
	arduino-cli
	bat
	blisp
	bottom
	brave
	cargo
	dotter
	eza
	fd
	fish
	flameshot
	gcc_multi
	gh
	gimp
	git
	gitui
	gnumake
	go
	gparted
	gradle
	just
	kicad
	libjaylink
	neovim
	nodejs
	notify-desktop
	nrfutil
	obsidian
	pkgs.vimPlugins.nvim-treesitter-parsers.vimdoc
	prusa-slicer
	python3
	qmk
	ripgrep
	rm-improved
	rustup
	saleae-logic-2
	segger-ozone
	slack
	sqlite
	starship
	stylua
	syncthing
	thunderbird
	typescript
	unzip
	vlc
	wezterm
	wget
	xclip
	zellij
	zig
	zoom-us
	zoxide
   	nixpkgs-fmt
  ];




fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "FiraCode" ]; })
];
  # Enable virtualbox. Ref <https://nixos.wiki/wiki/Virtualbox>
  #virtualisation.virtualbox.host.enable = true;
  #virtualisation.virtualbox.host.enableExtensionPack = true;
  #users.extraGroups.vboxusers.members = [ "mantas" ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
	services.flatpak.enable = true;
  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "23.11"; # Did you read the comment?

}
