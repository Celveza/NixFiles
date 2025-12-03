{ stdenv }:

stdenv.mkDerivation{
	pname = "Ellen-Joe";
	version = "1.0";
	src = ./Ellen-Joe.tar.gz;
	installPhase = ''
		mkdir -p $out/share/icons
		tar -xzf  $src -C $out/share/icons
	'';
}

