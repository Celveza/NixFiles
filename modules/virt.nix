{ pkgs, inputs, ... }:
{
  environment.systemPackages = [
    pkgs.virt-manager
    pkgs.qemu
    inputs.ataraxiasjel.packages.x86_64-linux.waydroid-script
    pkgs.OVMFFull
  ];

  virtualisation.libvirtd.enable = true;
  virtualisation.libvirtd.qemu.vhostUserPackages = [pkgs.virtiofsd];
  virtualisation.waydroid.enable = true;

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "celveza" ];
  virtualisation.virtualbox.host.enableExtensionPack = true;
}
