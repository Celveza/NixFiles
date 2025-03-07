{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    #theme = "sidebar"; # Tema predefinido
    # O puedes especificar un tema personalizado
    # theme = "/ruta/a/tu/tema.rasi";
    extraConfig = {
          bw = 0;
          disable-history = true;
          display-drun = "";
          drun-display-format = "{name}";
          #font = "Iosevka 10";
          hover-select = true;
          kb-cancel = "Escape,MouseMiddle";
          location = 0;
          modi = "drun,filebrowser";
          show-icons = true;
          terminal = "wezterm";
          xoffset = 0;
          yoffset = 0;
    };
  };
}
