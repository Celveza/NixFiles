# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../modules
      ./local-packages.nix
    ];
  nixpkgs.config.allowUnfree = true;

  networking.hostName = "port"; # Define your hostname.

  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.latest;

  hardware.graphics = {
  	enable = true;
  };
  
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {
	modesetting.enable = true;
	powerManagement.enable = true;
	powerManagement.finegrained = true;
	open = false;
	nvidiaSettings = true;
	prime = {
		intelBusId = "PCI:0:0:2";
		nvidiaBusId = "PCI:0:1:0";

		offload = {
			enable = true;
			enableOffloadCmd = true;
		};
	};
  };

  environment.systemPackages = [ pkgs.home-manager ];

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  system.stateVersion = "24.11"; # Did you read the comment?

}
