{ pkgs, ...}:
{
networking.networkmanager.enable = true;
time.timeZone = "Europe/Madrid";
services.openssh.enable = true;
networking.enableIPv6 = false;

}
