{ pkgs, ...}:
{
networking.networkmanager.enable = true;
time.timeZone = "Europe/Dublin";

environment.systemPackages = with pkgs; [
   linux-wifi-hotspot
];
}
