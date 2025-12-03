{ homeStateVersion, user, ... }: {
  imports = [
    ./modules
    ./apps.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };

 home.sessionVariables.NH_FLAKE = "/home/celveza/NixFiles/.";

}
