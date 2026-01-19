{ pkgs, inputs, ... }:
{
	imports = [
		inputs.niri.homeModules.niri
	];	

	programs.niri = {
		enable = true;
		settings = {
			input = {
				keyboard.xkb.layout = "es";
				mouse = {
					accel-profile = "flat";
					accel-speed = -0.7;
				};
			};
			binds = {
				"Mod+Q".action.spawn = [close-window];
				"Mod+T".action.spawn = ["ghostty"];
				"Mod+D".action.spawn = ["fuzzel"];
				"XF86AudioRaiseVolume" = {
					allow-when-locked = true;
					action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+"];
				};

				"XF86AudioLowerVolume" = {
					allow-when-locked = true;
					action.spawn = ["wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-"];
				};

			};
		}; 
	};

	services.gnome-keyring.enable = true;
	programs.alacritty.enable = true;
	programs.fuzzel.enable = true;
	services.mako.enable = true;
}
