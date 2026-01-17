{ config, pkgs, ... }: {
  sops = {
    defaultSopsFile = ./secrets.yaml; # Ruta al archivo cifrado
    defaultSopsFormat = "yaml";
    age.keyFile = "/home/celveza/.config/sops/age/keys.txt"; # Ruta a tu llave privada

    secrets = {
      pma_env = { }; # Declara que quieres usar este secreto
    };
  };
}