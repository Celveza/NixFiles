{pkgs, inputs, config, fonts, ...}: {
	imports = [ inputs.stylix.homeManagerModules.stylix ];

	home.packages = with pkgs; [
		jetbrains-mono
    		noto-fonts
    		noto-fonts-emoji
    		twemoji-color-font
    		font-awesome
    		powerline-fonts
    		powerline-symbols
        nerd-fonts.symbols-only
        dejavu_fonts
	    	noto-fonts-lgc-plus
				iosevka
	];


	stylix = {
		enable = true;
		polarity = "light";
		targets = {
			neovim.enable = true;
			waybar.enable = true;
			rofi.enable = true;
			hyprland.enable = false;
			spicetify.enable = false;
			hyprlock.enable = false;
			wezterm.enable = true;
		};

		fonts = {
			emoji = {
				name = "Noto Color Emoji";
				package = pkgs.noto-fonts-color-emoji;
			};

			monospace = {
				name = "Iosevka";
				package = pkgs.iosevka;
			};

			sansSerif = {
				name = "Iosevka";
				package = pkgs.iosevka;
			};

			serif = {
				name = "Iosevka";
				package = pkgs.iosevka;
			};

			sizes = {
				terminal = 13;
				applications = 11;
			};
		};

		iconTheme = {
			enable = true;
			package = pkgs.papirus-icon-theme;
			dark = "Papirus-Dark";
			light = "Papirus-Light";
		};

		cursor = {
			package = pkgs.callPackage ./customCursor.nix {};
			name = "Natsuki";
			size = 24;
		};

		image = ./wallpaper.jpg;
	};
}
