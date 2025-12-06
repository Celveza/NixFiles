{pkgs, config, ...}:
let
	loginSwayConfig = pkgs.writeText "greetd-sway-config" ''
		exec "${pkgs.greetd.regreet}/bin/regreet; swaymsg exit"
		output * disable
		output "DP-1" enable mode 1920x1080 pos 0 0
		input * {
    		  xkb_layout "es"
   		 }
 	 '';
in
{
  programs.regreet.enable = true;

  services.greetd = {
      enable = true;
      settings = {
        default_session = {
          # Usamos Sway con la config que creamos arriba
          command = "${pkgs.sway}/bin/sway --config ${loginSwayConfig}";
          user = "greeter";
        };
      };
    };
}
