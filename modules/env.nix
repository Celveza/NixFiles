{ inputs,... }:
{
  environment.sessionVariables = rec {
    TERMINAL = "wezterm";
    EDITOR = "nvim";
    XDG_BIN_HOME = "$HOME/.nix-profile/bin";
#    XDG_DATA_DIRS = "$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share";
    PATH = [
      "${XDG_BIN_HOME}"
#      "${XDG_DATA_DIRS}"
    ];
  };
}
