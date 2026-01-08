{ pkgs, ... }:
{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true; # Importante para Hyprland
    # Opcional: Autologin

  };

  services.displayManager = {
    autoLogin = {
      enable = true;
      user = "celveza";
    };
  };
  
  # Si usas Stylix, él se encargará del tema visual automáticamente.
}