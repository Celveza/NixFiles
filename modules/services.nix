{ pkgs, ... }:
{
  systemd.user.services.wiiu-capturadora = {
    enable = true;
    after = [ "pipewire.service" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = ''
        ${pkgs.pipewire}/bin/pw-loopback --latency=10 --name 'WiiU'
      '';
      Restart = "on-failure";
      RestartSec = 5;
    };
  };
}
