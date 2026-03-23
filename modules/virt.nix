{ pkgs, inputs, ... }:
{
  environment.systemPackages = [
    pkgs.virt-manager
    pkgs.qemu
    #inputs.ataraxiasjel.packages.x86_64-linux.waydroid-script
    pkgs.OVMFFull
  ];

  virtualisation.libvirtd = {
    enable = true;
    onBoot = "start";
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      vhostUserPackages = [ pkgs.virtiofsd ];
    };
  };
  services.envfs.enable = true;
  virtualisation.waydroid.enable = true;

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "celveza" ];
  virtualisation.virtualbox.host.enableExtensionPack = true;

  systemd.services.virt-secret-init-encryption = {
    path = [ pkgs.coreutils pkgs.systemd ];
  };
}
