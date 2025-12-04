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
					cmd = "jellyfinmediaplayer";
					detached = true;
					auto-detach = true;
				}
			];
		};
	};
}
