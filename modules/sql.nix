{ pkgs, config, ...}:
{
	services.mysql = {
		enable = true;
		package = pkgs.mariadb;
		
		settings = {
    		mysqld = {
      			bind-address = "0.0.0.0";
    		};
  		};
	};

	virtualisation.oci-containers.containers = {
    	phpmyadmin = {
      		image = "phpmyadmin/phpmyadmin";
	      environment = {
	        PMA_HOST = "host.containers.internal"; 
	        PMA_PORT = "3306";
			PMA_USER = "admin";
			PMA_HIDE_DB = "^(information_schema|mysql|performance_schema|sys)$";
	      };

		  environmentFiles = [
    		config.sops.secrets.pma_env.path
  		  ];

	      extraOptions = [ "--network=host" ]; # Usa la red del host para ver tu MariaDB local fácilmente
    	};
  	};
}
