{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    jellyfin-media-player
    htop
    pavucontrol
    vesktop
    bottom
    brightnessctl
    cliphist
    feishin
    ffmpeg
    ffmpegthumbnailer
    networkmanagerapplet
    fzf
    moonlight-qt
    gedit
    imv
    vlc
    mono
    ueberzugpp
    unzip
    wget
    wl-clipboard
    zip
    libnotify
    linux-wallpaperengine
    krita
    zed
    inputs.zen-browser.packages."${system}".default
    adwsteamgtk
    lutris
    bottles
    mangohud
    kdePackages.korganizer
    goverlay
    heroic
    winetricks
    wineWowPackages.waylandFull
    zenity
  ];
}
