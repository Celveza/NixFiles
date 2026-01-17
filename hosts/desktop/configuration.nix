# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../modules
    ];
  nixpkgs.config.allowUnfree = true;

  networking.hostName = "desktop"; # Define your hostname.

  environment.systemPackages = [ 
    pkgs.home-manager
    pkgs.radeontop
  ];

  hardware.graphics = {
  enable = true;
  enable32Bit = true;
};

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  system.stateVersion = "25.11"; # Did you read the comment?

}
