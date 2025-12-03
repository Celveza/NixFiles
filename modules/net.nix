{ pkgs, ...}:
{
networking.networkmanager.enable = true;
time.timeZone = "Europe/Madrid";

environment.systemPackages = with pkgs; [
   linux-wifi-hotspot
];
}
