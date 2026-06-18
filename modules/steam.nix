{ pkgs, inputs, ... }:
{

nixpkgs.overlays = [ inputs.millennium.overlays.default ];

programs.steam = {
  enable = true;
 # package = pkgs.millennium-steam;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  localNetworkGameTransfers.openFirewall = true;
  gamescopeSession.enable = true;
};



services.hardware.openrgb.enable = true;
environment.systemPackages = with pkgs; [ openrgb-with-all-plugins ];
services.gnome.gnome-keyring.enable = true;
programs.gamemode.enable = true;

}
