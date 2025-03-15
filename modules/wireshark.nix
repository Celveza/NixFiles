{ pkgs, ... }:
{
 programs.wireshark = {
 	enable = true;
	package = pkgs.wireshark;
	dumpcap.enable = true;
 };
 security.polkit.enable = true;
}
