{
  wayland.windowManager.hyprland = {
	enable = true;
	systemd.enable = true;


    settings = {
        "$fileManager"="thunar";
        "$mainMod"="SUPER";
        "$menu"="rofi -show drun";
        "$terminal" ="wezterm";
        

        animations = {
        bezier = [
            "easeOutQuint,0.23,1,0.32,1"
            "easeInOutCubic,0.65,0.05,0.36,1"
            "linear,0,0,1,1"
            "almostLinear,0.5,0.5,0.75,1.0"
            "quick,0.15,0,0.1,1"
        ];
        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
        ];
        };
     

        decoration = {
        blur = {
          enabled=true;
          passes=1;
          size=3;
          vibrancy=0.169600;
            };

        shadow = {
            color="rgba(1a1a1aee)";
            enabled=true;
            range=4;
            render_power=3;
            };
        active_opacity=1.000000;
        inactive_opacity=1.000000;
        rounding=10;
        };

        device = {
        name="logitech-g203-lightsync-gaming-mouse";
        accel_profile="flat";
        sensitivity=-0.500000;
        };

        dwindle = {
        preserve_split=true;
        pseudotile=true;
        };

        general = {
          allow_tearing=false;
          border_size=2;
          gaps_in=5;
          gaps_out=10;
          layout="dwindle";
          resize_on_border=true;
        };

#        gestures = {
#          workspace_swipe=true;
#        };

        input = {
        touchpad = {
        disable_while_typing=true;
        natural_scroll=true;
        };
        follow_mouse=true;
        kb_layout="es";
        sensitivity=0;
        };

        master = {
            new_status="master";
            };

            misc = {
            disable_hyprland_logo=true;
            force_default_wallpaper=0;
            };

            bind = [
                "$mainMod, C, killactive,"
                "$mainMod, M, exit,"
                "$mainMod, E, exec, $fileManager"
                "$mainMod, F, togglefloating,"
                "$mainMod, R, exec, $menu"
                "$mainMod, P, pseudo, # dwindle"
                "$mainMod, J, togglesplit, # dwindle"
                "$mainMod, Z, fullscreen"
                "$mainMod SHIFT, E, exec, rofimoji"
                "$mainMod, left, movefocus, l"
                "$mainMod, right, movefocus, r"
                "$mainMod, up, movefocus, u"
                "$mainMod, down, movefocus, d"
                "$mainMod, 1, workspace, 1"
                "$mainMod, 2, workspace, 2"
                "$mainMod, 3, workspace, 3"
                "$mainMod, 4, workspace, 4"
                "$mainMod, 5, workspace, 5"
                "$mainMod, 6, workspace, 6"
                "$mainMod, 7, workspace, 7"
                "$mainMod, 8, workspace, 8"
                "$mainMod, 9, workspace, 9"
                "$mainMod, 0, workspace, 10"
                "$mainMod SHIFT, 1, movetoworkspace, 1"
                "$mainMod SHIFT, 2, movetoworkspace, 2"
                "$mainMod SHIFT, 3, movetoworkspace, 3"
                "$mainMod SHIFT, 4, movetoworkspace, 4"
                "$mainMod SHIFT, 5, movetoworkspace, 5"
                "$mainMod SHIFT, 6, movetoworkspace, 6"
                "$mainMod SHIFT, 7, movetoworkspace, 7"
                "$mainMod SHIFT, 8, movetoworkspace, 8"
                "$mainMod SHIFT, 9, movetoworkspace, 9"
                "$mainMod SHIFT, 0, movetoworkspace, 10"
                "$mainMod, S, togglespecialworkspace, magic"
                "$mainMod SHIFT, S, movetoworkspace, special:magic"
                "$mainMod, mouse_down, workspace, e+1"
                "$mainMod, mouse_up, workspace, e-1"
                "$mainMod, B, exec, pkill -SIGUSR2 waybar"
                "$mainMod SHIFT, B, exec, pkill -SIGUSR1 waybar"
                "$mainMod,       N, exec, swaync-client -t"
                "$mainMod,	 L, exec, hyprlock"
                "$mainMod SHIFT, P, exec, hyprshot -m region -o ~/Pictures --freeze"
                "$mainMOD CONTROL, Print, exec, hyprshot -m output -m active -o ~/Pictures --freeze"
                "$mainMod,       V, exec, cliphist list | $menu --dmenu | cliphist decode | wl-copy"
                "$mainMod,       P, exec, hyprpicker -an"
                "$mainMod,	 W, exec, zen-beta"
		"$mainMod SHIFT, W, exec, zen-beta --private-window"
		"$mainMod,	 Q, exec, wezterm"
            ];

            bindel = [
                ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
                ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
                ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
                ", XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
                ", XF86MonBrightnessUp, exec, brightnessctl s 10%+"
                ", XF86MonBrightnessDown, exec, brightnessctl s 10%-"
                ", XF86AudioNext, exec, playerctl next"
                ", XF86AudioPause, exec, playerctl play-pause"
                ", XF86AudioPlay, exec, playerctl play-pause"
                ", XF86AudioPrev, exec, playerctl previous"
            ];
            bindm = [
                "$mainMod, mouse:272, movewindow"
                "$mainMod, mouse:273, resizewindow"
            ];
            env = [
		"NIXOS_OZONE_WL,1"
		"QT_QPA_PLATFORM,wayland"
                "XDG_SESSION_DESKTOP,Hyprland"
                "XDG_SESSION_TYPE,wayland"
                "XDG_CURRENT_DESKTOP,Hyprland"
		"XDG_SCREENSHOTS_DIR,$HOME/screens"
            ];

            exec-once = [
                "nm-applet --indicator"
                "blueman-applet"
                "wl-paste --type text --watch cliphist store"
                "wl-paste --type image --watch cliphist store"
                "waybar &"
		"systemctl --user start hyprpolkitagent"
		"jellyfin-rpc &"
            ];
            
	    monitor = [
		"DP-1,1920x1080@165,auto,1"
		"HDMI-A-1,1920x1080@75,auto,1"
            ];

            windowrulev2 = [
                "suppressevent maximize, class:.*"
                "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
            ];
	};
  };
}
