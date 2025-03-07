{ inputs,... }:
{
  environment.sessionVariables = rec {
    TERMINAL = "wezterm";
    EDITOR = "nvim";
    XDG_BIN_HOME = "$HOME/.nix-profile/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };
}
