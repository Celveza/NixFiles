{ pkgs, ... }:
{
  systemd.user.services.wiiu-capturadora = {
    enable = true;
    after = [ "graphical.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = ''
        ${pkgs.pipewire}/bin/pw-loopback
      '';
      Restart = "on-failure";
      RestartSec = 5;
    };
  };
}
