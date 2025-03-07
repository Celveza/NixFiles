{inputs,pkgs, nixosModules,homeManagerModules, ...}:
let
     spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
in
{
	import = [
		inputs.spicetify-nix.homeManagerModules.default
	];
	programs.spicetify = {
		enable = true;

		theme = spicePkgs.themes.text;
		colorScheme = "rosepinedawn";

		enabledExtensions = with spicePkgs.extensions; [
			beautifulLyrics
			adblock
			fullScreen
			volumePercentage
			oneko
			skipStats
			showQueueDuration
			copyToClipboard
			betterGenres
			hidePodcasts
			playingSource
			queueTime
		];
	};
}
