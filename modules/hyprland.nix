{ pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  security.pam.services.hyprlock = {};
  environment.systemPackages = with pkgs; [
	hyprpolkitagent
 ];
}
