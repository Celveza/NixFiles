{ stylix, inputs, user, ... }:
{
  stylix = {
    enable = true;
    autoEnable = false;
    targets = {
      plymouth.enable = false;
      regreet.enable = true;
};

    image = ./lock.jpg;

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
};
}
