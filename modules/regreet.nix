{ pkgs, ... }:
{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true; # Importante para Hyprland
    # Opcional: Autologin
    autoLogin = {
      enable = true;
      user = "celveza";
    };
  };
  
  # Si usas Stylix, él se encargará del tema visual automáticamente.
}