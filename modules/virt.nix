{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    virt-manager
    qemu
  ];
  virtualisation.libvirtd.enable = true;
  virtualisation.waydroid.enable = true;
}
