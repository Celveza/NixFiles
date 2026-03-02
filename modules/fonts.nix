{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      iosevka
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      sarasa-gothic
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        # Esto define el orden de prioridad
        monospace = [ "Iosevka" "Sarasa Mono SC" "Sarasa Mono J" ];
        sansSerif = [ "Iosevka" "Noto Sans CJK JP" "Noto Color Emoji" ];
        serif = [ "Iosevka" "Noto Serif CJK JP" "Noto Color Emoji" ];
      };
    };
  };
}
