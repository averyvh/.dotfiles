{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./pkgs.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.networkmanager.enable = true;

  time.timeZone = "America/Vancouver";

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
  services.mpd = {
    enable = true;
    musicDirectory = "/home/aer/Music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "pipewire-0"
      }
    '';
  };
  services.mpd.user = "aer";
  systemd.services.mpd.environment = {
    XDG_RUNTIME_DIR = "/run/user/1000";
  };


  programs.hyprland.enable = true;
  programs.steam.enable = true;

  services.libinput.enable = true;

  users.users.aer = {
    extraGroups = [ "wheel" ]; 
    isNormalUser = true;
  };

  system.stateVersion = "25.05";

}

