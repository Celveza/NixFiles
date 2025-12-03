{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
 
  nixpkgs.config.permittedInsecurePackages = [
                 "electron-33.4.11"
 		 "qtwebengine-5.15.19"
   ]; 
  
  home.packages = with pkgs; [
    bitwarden-desktop
    dosbox
    dolphin-emu
    ryubing
    mpv
    xivlauncher
    oneko
    protontricks
    kdePackages.kdenlive
    duckstation
    melonDS
    retroarch
    cartridges
    android-tools
    gnome-disk-utility
    tree
    anydesk
   # teamspeak3
    teamspeak6-client
    azahar
    ppsspp
    openvpn
    xdelta
    protonup-qt
    umu-launcher
    deluge
    unrar
    yad
    p7zip
    playerctl
    hyprshot
    grim
    slurp
    inputs.mio-nur.packages.${pkgs.system}.jellyfin-media-player
    jellyfin-rpc
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
    brave
    adwsteamgtk
    lutris
    bottles
    mangohud
   # kdePackages.korganizer
    kdePackages.akonadi
    khal
    goverlay
    heroic
    winetricks
    wineWowPackages.staging
    zenity
    inputs.zen-browser.packages."${system}".beta
  ];

}
