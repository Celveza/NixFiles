{
	networking.firewall.allowedUDPPortRanges = [ { from = 20000; to = 65535; } ];
	networking.firewall.allowedTCPPortRanges = [ { from = 50000; to = 65535; }];
	networking.firewall.trustedInterfaces = [ "virbr0" ];
}
