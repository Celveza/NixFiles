{ pkgs, ... }:
{
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
    thunar-media-tags-plugin
    thunar-vcs-plugin
];

  services.gvfs.enable = true; # Mount, trash, and other functionalities
  services.tumbler.enable = true;
}
