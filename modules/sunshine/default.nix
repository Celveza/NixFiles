{ pkgs, nur, ... }:
{
	services.sunshine = {
		enable = true;
		autoStart = true;
		capSysAdmin = true;
		openFirewall = true;
		settings = {
			sunshine_name = "celveza";
			output_name = "1";
		};
		applications = {
			apps = [
				{
					name = "Jellyfin";
					prep-cmd = [
						{
							do = "tailscale up";
							undo = "tailscale down";
						}
					];
					cmd = "jellyfin-desktop --fullscreen --tv";
					detached = true;
					auto-detach = true;
					image-path = "/home/celveza/Pictures/jellyfn.png";
				}

				{
					name = "Desktop";
					image-path = "desktop.png";
				}

				{
					name = "Steam";
					prep-cmd = [
						{
							undo = "sh /home/celveza/NixFiles/modules/sunshine/stopSteam.sh";
						}
					];
					cmd = "steam steam://open/gamepadui";
					detached = true;
					auto-detach = true;
					image-path = "/home/celveza/Pictures/Steam.png";
				}

				{
					name = "Steam PSVITA";
                    prep-cmd = [
                        	{
								do = "sh /home/celveza/NixFiles/modules/sunshine/startPSVITA.sh";
                            	undo = "sh /home/celveza/NixFiles/modules/sunshine/stopSteam.sh";
                        	}
                        ];
                        cmd = "steam -gamepadui";
                        image-path = "/home/celveza/Pictures/Steam.png";
				}
			];
		};
	};
}
