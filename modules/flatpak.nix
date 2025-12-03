{

	services.flatpak = {
		enable = true;

		remotes = [{
    			name = "flathub";
    			location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
  		}];

  		packages = [
			"com.github.iwalton3.jellyfin-media-player"
  		];
	};
}
