{ pkgs, ... }:
{
  boot.plymouth = {
      enable = true;
      theme = "seal_3";
      themePackages = with pkgs; [
        # By default we would install all themes
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "seal_3" ];
        })
      ];

    };

  boot.kernelParams = [ "quiet" "splash" ];

  boot.loader.timeout = 0;
}
