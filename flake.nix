{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

     home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
     };

     stylix.url = "github:danth/stylix";

     mio-nur = {
	url = "github:mio-19/nurpkgs";
	inputs.nixpkgs.follows = "nixpkgs";
     };

     spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    nix-flatpak.url = "github:gmodena/nix-flatpak";
    ataraxiasjel.url = "github:AtaraxiaSjel/nur";
    jovian.url = "github:Jovian-Experiments/Jovian-NixOS";
    millennium.url = "github:trivaris/millennium?dir=packages/nix";
  };

  outputs = { self, nixpkgs, home-manager, nix-flatpak, stylix, spicetify-nix, ataraxiasjel, mio-nur, jovian, ... }@inputs:
  let
   system = "x86_64-linux";
   homeStateVersion = "25.11";
   user = "celveza";
   hosts = [
     { hostname = "port"; stateVersion = "24.11"; }
     { hostname = "desktop"; stateVersion = "25.11"; }
   ];
   makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
     system = system;
     specialArgs = {
        inherit inputs  stateVersion    hostname    user;
     };

   modules = [
     stylix.nixosModules.stylix

	jovian.nixosModules.jovian

     ./hosts/${hostname}/configuration.nix    
   ];
  };
  in
  {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        inherit inputs homeStateVersion user;
      };

      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}
