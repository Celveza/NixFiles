{ config, pkgs, ... }:

{
  programs.wezterm = {
    enable = true;

    extraConfig = ''
      return {
        -- Usar colores de Stylix
        colors = {
          foreground = "${config.stylix.colors.base05}",  -- Color de texto
          background = "${config.stylix.colors.base00}", -- Color de fondo

          -- Colores de la paleta
          ansi = {
            "${config.stylix.colors.base01}", -- Negro
            "${config.stylix.colors.base08}", -- Rojo
            "${config.stylix.colors.base0B}", -- Verde
            "${config.stylix.colors.base0A}", -- Amarillo
            "${config.stylix.colors.base0D}", -- Azul
            "${config.stylix.colors.base0E}", -- Magenta
            "${config.stylix.colors.base0C}", -- Cian
            "${config.stylix.colors.base05}", -- Blanco
          },
          brights = {
            "${config.stylix.colors.base03}", -- Negro brillante
            "${config.stylix.colors.base08}", -- Rojo brillante
            "${config.stylix.colors.base0B}", -- Verde brillante
            "${config.stylix.colors.base0A}", -- Amarillo brillante
            "${config.stylix.colors.base0D}", -- Azul brillante
            "${config.stylix.colors.base0E}", -- Magenta brillante
            "${config.stylix.colors.base0C}", -- Cian brillante
            "${config.stylix.colors.base07}", -- Blanco brillante
          },
        },

        -- Usar la fuente de Stylix
        font = wezterm.font("${config.stylix.fonts.monospace.name}", { weight = "Regular" }),
        font_size = ${toString config.stylix.fonts.sizes.terminal},
      }
    '';
  };
}
