{ stdenv }:

stdenv.mkDerivation{
	pname = "Lucy";
	version = "1.0";
	src = ./Lucy.tar.gz;
	installPhase = ''
		mkdir -p $out/share/icons
		tar -xzf  $src -C $out/share/icons
	'';
}
