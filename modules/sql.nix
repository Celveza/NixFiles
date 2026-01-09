{ pkgs, ...}:
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
      		ports = [ "8080:80" ]; # Accederás por el puerto 8080
	      environment = {
	        PMA_HOST = "host.containers.internal"; 
	        PMA_PORT = "3306";
	      };
	      extraOptions = [ "--network=host" ]; # Usa la red del host para ver tu MariaDB local fácilmente
    	};
  	};
}
