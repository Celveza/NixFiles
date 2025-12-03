{ pkgs, ... }:
{
programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  localNetworkGameTransfers.openFirewall = true;
  gamescopeSession.enable = true;
};

services.hardware.openrgb.enable = true;
environment.systemPackages = with pkgs; [ openrgb-with-all-plugins ];

programs.gamemode.enable = true;
}
