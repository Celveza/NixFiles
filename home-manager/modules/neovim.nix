{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      nerdtree
    ];
    withRuby = false;
    withPython3 = false;
  };
}
