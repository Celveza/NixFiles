{ stdenv }:

stdenv.mkDerivation{
	pname = "Pippa";
	version = "1.0";
	src = ./Pippa.tar.gz;
	installPhase = ''
		mkdir -p $out/share/icons
		tar -xzf  $src -C $out/share/icons
	'';
}

