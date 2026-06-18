{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [
    "electron-39.8.10"
  ];

  # Se añade el overlay para desactivar el test específicamente en openldap
nixpkgs.overlays = [
    (final: prev: {
      openldap = prev.openldap.overrideAttrs (oldAttrs: {
        doCheck = !prev.stdenv.hostPlatform.isi686;
      });
    })
  ];


 home.packages = with pkgs; [
     adwsteamgtk
     age
     airshipper
     android-tools
     anydesk
     appimage-run
     archipelago
     azahar
     basex
     bitwarden-desktop
     bottom
     brave
     brightnessctl
     cameractrls-gtk3
     cartridges
     cliphist
     deluge
     dolphin-emu
     dosbox
     easyeffects
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
     jdk
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
     nextcloud-client
     noto-fonts
     noto-fonts-cjk-sans
     noto-fonts-cjk-serif
     noto-fonts-color-emoji
     ocs-url
     octave
     openvpn
     osu-lazer
     p7zip
     pavucontrol
     pear-desktop
     playerctl
     ppsspp
     prismlauncher
     protonplus
     protontricks
     protonup-qt
     python3
     qpwgraph
     r2modman
     #retroarch-full
     rPackages.tinytex
     rpcs3
     rsync
     ryubing
     sgdboop
     slurp
     snes9x
     sops
     ssh-to-age
     steam-rom-manager
     tailscale-systray
     teamspeak6-client
     (texliveSmall.withPackages (ps: with ps; [ chktex latexmk todonotes enumitem ]))
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
     xdotool
     xenia-canary
     xivlauncher
     xmlcopyeditor
     xprop
     xrandr
     xwininfo
     xxd
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
