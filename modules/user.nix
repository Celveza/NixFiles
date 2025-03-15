{ pkgs, user, ... }: {
#  programs.zsh.enable = true;

  users = {
    #defaultUserShell = pkgs.zsh;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "libvirtd" "wireshark"];
    };
  };

# services.getty.autologinUser = user;
}
