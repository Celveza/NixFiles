{ pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  security.polkit.enable = true;

  environment.systemPackages = with pkgs; [
	plymouth
  ];
}
