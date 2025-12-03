{
programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
    "backlight" = {
      device = "intel_backlight";
      format = "  {percent}%";
    };
    "battery" = {
      format = "{icon} {capacity}%" ;
      format-alt = "{time} {icon}";
      format-charging= " {capacity}%";
      format-icons = [ "" "" "" "" "" ];
      interval = 10;
      states = {
        critical = 1;
        warning = 30;
      };
    };
    "clock" = {
      format = " {:%H:%M} ";
      tooltip-format = "{:%d-%m-%Y}";
    };

    "custom/lock"= {
      format = "  ";
      on-click = "hyrplock";
      tooltip = false;
    };
    "custom/power" = {
      format = " 󰐥  ";
      on-click = "shutdown now";
      tooltip = false;
    };
    "custom/publicip" = {
      class = "publicip";
      exec = "curl -s https=//ifconfig.me";
      format = "🌐 {}";
      interval = 60;
    };
    "custom/quit" = {
      format = "  ";
      on-click = "hyprctl dispatch exit";
      tooltip = false;
    };
    "custom/reboot"= {
      format = " 󰜉 ";
      on-click = "reboot";
      tooltip = false;
    };
    "custom/vpn"= {
      exec = "/home/$USER/NixFiles/home-manager/modules/waybar/tailscale.sh";
      format = {};
      interval = 5;
      on-click = "/home/$USER/NixFiles/home-manager/modules/waybar/tailscale.sh toggle";
      tooltip = "tailscale";
    };
    "custom/weather" = {
      class = "weather";
      exec = "curl -s 'wttr.in/Salamanca?format=%c%t'";
      format = " {} ";
      interval = 3600;
    };
    "group/IP" = {
      drawer= {
        transition-duration = 500;
        transition-left-to-right = true;
      };
      group = true;
      modules = [
        "custom/vpn"
        "network"
        "custom/publicip"
      ];
      orientation = "inherit";
    };
    "group/power" = {
      drawer = {
        transition-duration = 500;
        transition-left-to-right = false;
      };
      modules= [
        "custom/power"
        "custom/quit"
        "custom/reboot"
        "custom/lock"
      ];
      orientation = "inherit";
    };
    height = 30;
    "hyprland/workspaces" = {
      all-outputs= false;
      disabled-scroll = true;
      format= "{icon}";
      format-icons= {
        "1"= "I";
        "2"= "II";
        "3"= "III";
        "4"= "IV";
        "5"= "V";
        "6"= "VI";
        "7"= "VII";
        "8"= "VIII";
        "9"= "IX";
        "magic"= "";
      };
      persistent-workspaces = {
        "*"= 3;
      };
      show-special = true;
      special-visibility-only = true;
    };
    layer = "top";
    modules-center = [
      "custom/weather"
      "clock"
      "pulseaudio"
    ];
    modules-left = [
      "hyprland/workspaces"
    ];
    modules-right = [
      "group/IP"
      "backlight"
      "battery"
      "tray"
      "group/power"
    ];
    network = {
      format-disconnected = "SIN INTERNET";
      format-ethernet = "{ipaddr}";
      format-wifi = "{ipaddr}";
      interface = "wlp15s0";
      interval = 10;
      tooltip-format-wifi = "{essid} --- {signalStrength}%";
    };
    position = "top";
    pulseaudio = {
      format = " {icon} {volume}% ";
      format-bluetooth = "{icon} {volume}% ";
      format-icons = {
        car = "";
        default = [
          ""
          ""
        ];
        headphones = "";
        phone = "";
        portable = "";
      };
      format-muted = "";
      on-click = "pavucontrol";
    };
    tray = {
      icon-size = 14;
      show-passive-items= true;
      spacing = 5;
    };
    };
  };
};
}
