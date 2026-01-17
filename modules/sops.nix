{ config, pkgs, ... }: {
  sops = {
    defaultSopsFile = ./../secrets.yaml; # Ruta al archivo cifrado
    defaultSopsFormat = "yaml";
    age.sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];

    secrets = {
      pma_env = { }; # Declara que quieres usar este secreto
    };
  };
}
