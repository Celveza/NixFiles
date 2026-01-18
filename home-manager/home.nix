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
}
