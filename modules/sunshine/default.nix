{ pkgs, nur, ... }:
{
	services.sunshine = {
		enable = true;
		autoStart = true;
		capSysAdmin = true;
		openFirewall = true;
		settings = {
			sunshine_name = "celveza";
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
					cmd = "jellyfinmediaplayer --fullscreen --tv";
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
							undo = "pkill steam";
						}
					];
					cmd = "wezterm start steam steam://open/gamepadui";
					detached = true;
					auto-detach = true;
					image-path = "/home/celveza/Pictures/Steam.png";
				}
				
				{
					name = "Steam PSVITA";
                    prep-cmd = [
                        	{	
                            	undo = "pkill steam";
                        	}
                        ];
                        detached = true;
                        cmd = "sh /home/celveza/NixFiles/modules/sunshine/startPSVITA.sh";
                        auto-detach = true;
                        image-path = "/home/celveza/Pictures/Steam.png";
				}
			];
		};
	};
}
