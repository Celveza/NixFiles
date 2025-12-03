{ pkgs, inputs, ... }:
{
  environment.systemPackages = [
    pkgs.virt-manager
    pkgs.qemu
    inputs.ataraxiasjel.packages.x86_64-linux.waydroid-script
  ];
 
  virtualisation.libvirtd.enable = true;
  virtualisation.waydroid.enable = true;

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "celveza" ];
  virtualisation.virtualbox.host.enableExtensionPack = true;
}
