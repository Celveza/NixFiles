{ pkgs, inputs, ... }:
{
  environment.systemPackages = [
    pkgs.virt-manager
    pkgs.qemu
    inputs.ataraxiasjel.packages.x86_64-linux.waydroid-script
  ];
  virtualisation.waydroid.enable = true;
  virtualisation.libvirtd.enable = true;
}
