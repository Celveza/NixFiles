{ pkgs, config, ... }:
let
  # Configuración mínima de Sway solo para "sostener" la pantalla de login (Regreet)
  loginSwayConfig = pkgs.writeText "greetd-sway-config" ''
    # Ejecuta regreet y, cuando este termine, cierra sway
    exec "${pkgs.greetd.regreet}/bin/regreet; swaymsg exit"
    
    # Configuración básica de pantalla
    input * {
      xkb_layout "es"
    }
    
    # Opcional: Si tienes problemas de resolución en el login, descomenta y ajusta:
    output "DP-1" mode 1920x1080 pos 0 0
  '';
in
{
  programs.regreet.enable = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        # Usamos Sway como "base" para mostrar Regreet
        command = "${pkgs.sway}/bin/sway --config ${loginSwayConfig}";
        user = "greeter";
      };
    };
  };
}
