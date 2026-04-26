{inputs,pkgs, nixosModules,homeManagerModules, ...}:
let
     spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
in
{
	imports = [
		inputs.spicetify-nix.homeManagerModules.default
	];
	programs.spicetify = {
		enable = true;

		theme = spicePkgs.themes.text;
		colorScheme = "RosePineDawn";

		enabledExtensions = with spicePkgs.extensions; [
			beautifulLyrics
			betterGenres
			adblock
			fullScreen
			volumePercentage
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
