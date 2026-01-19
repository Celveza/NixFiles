{ pkgs, inputs, ... }:
{
  services.displayManager.gdm = {
	enable = true;
	wayland = true;
  };
}
