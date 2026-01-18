{ pkgs, user, ... }: {
#  programs.zsh.enable = true;

  users = {
    #defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "libvirtd" "libvirt" "wireshark" "input" "uinput" "plugdev" "vboxusers" "gamemode"];
    };
  };

  environment.shellAliases = {
    edit-secrets = "export SOPS_AGE_KEY=$(sudo ssh-to-age -private-key -i /etc/ssh/ssh_host_ed25519_key) && sops secrets.yaml";
    nhome = "nh home switch /home/celveza/NixFiles/";
    nos = "nh os switch /home/celveza/NixFiles/";
  };
}
