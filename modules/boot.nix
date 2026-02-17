{ pkgs, ... }:
{
  security.polkit.enable = true;
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  environment.systemPackages = with pkgs; [
	plymouth
  ];
}
