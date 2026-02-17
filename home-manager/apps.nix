{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

 # nixpkgs.config.permittedInsecurePackages = [
 #   "electron-33.4.11"
 # ]

  home.packages = with pkgs; [
    adwsteamgtk
    age
    airshipper
    android-tools
    anydesk
    appimage-run
    azahar
    bitwarden-desktop
    bottom
    brave
    brightnessctl
    cartridges
    cliphist
    deluge
    discord
    dolphin-emu
    dosbox
    feishin
    ffmpeg
    ffmpegthumbnailer
    fzf
    gamescope
    gedit
    gnome-disk-utility
    goverlay
    grim
    gns3-gui
    gns3-server
    halloy
    heroic
    htop
    hyprpanel
    hyprshot
    imv
    iosevka
    jellyfin-media-player
    inputs.zen-browser.packages."${pkgs.stdenv.hostPlatform.system}".beta
    jellyfin-rpc
    kdePackages.akonadi
    kdePackages.kdenlive
    kdePackages.kdepim-addons
    kdePackages.qtstyleplugin-kvantum
    khal
    krita
    libnotify
    libreoffice
    linux-wallpaperengine
    lutris
    mangohud
    megasync
    melonds
    mono
    moonlight-qt
    mpv
    muffon
    networkmanagerapplet
    ocs-url
    octave
    openvpn
    osu-lazer
    p7zip
    pavucontrol
    playerctl
    ppsspp
    prismlauncher
    protonplus
    protontricks
    protonup-qt
    python3
    qpwgraph
    retroarch
    rpcs3
    rsync
    ryubing
    sgdboop
    slurp
    sops
    ssh-to-age
    steam-rom-manager
    tailscale-systray
    teamspeak6-client
    tree
    ueberzugpp
    umu-launcher
    unrar
    unzip
    vesktop
    vlc
    vscode
    vulkan-tools
    wget
    wineWowPackages.staging
    winetricks
    wl-clipboard
    xdelta
    xivlauncher
    yad
    zed-editor
    zenity
    zip
  ];

  qt = {
  enable = true;
  platformTheme.name = "kvantum";
  style.name = "kvantum";
};
}
