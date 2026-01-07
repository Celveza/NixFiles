{pkgs, inputs, config, fonts, ...}: {
	imports = [ inputs.stylix.homeManagerModules.stylix ];

	home.packages = with pkgs; [
		jetbrains-mono
    		noto-fonts
    		noto-fonts-color-emoji
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
		targets = {
			neovim.enable = true;
			waybar.enable = true;
			rofi.enable = true;
			hyprland.enable = false;
			spicetify.enable = false;
			hyprlock.enable = false;
			wezterm.enable = true;
			firefox.enable = true;
			vesktop.enable = true;
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
			package = pkgs.callPackage ./Natsuki.nix {};
			name = "Natsuki";
			size = 24;
		};

		image = ./wallpaper.jpg;

		base16Scheme = {
    base00 = "ffffff";  # Fondo principal
    base01 = "f8f0f5";  # Fondo secundario
    base02 = "f0dde6";  # Bordes
    base03 = "d1b3c1";  # Texto secundario
    base04 = "b38d9f";  # Texto terciario
    base05 = "94667d";  # Texto principal
    base06 = "753f5b";  # Enfasis
    base07 = "561838";  # Fondo oscuro
    base08 = "FF69B4";  # Error
    base09 = "FF1493";  # Advertencia
    base0A = "FFB6C1";  # Avisos
    base0B = "C71585";  # Éxito
    base0C = "DB7093";  # Info
    base0D = "FFC0CB";  # Primary (botones)
    base0E = "FF3399";  # Secondary
    base0F = "E75480";  # Destacados
  };
	override = {
    		icon-contrast = pkgs.writeText "icon-contrast.css" ''
      icon {
        -gtk-icon-filter: contrast(200%) brightness(150%);
      }
    '';
  };

	};
}
