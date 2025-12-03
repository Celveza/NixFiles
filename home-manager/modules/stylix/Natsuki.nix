{ stdenv }:

stdenv.mkDerivation{
	pname = "Natsuki";
	version = "1.0";
	src = ./Natsuki.tar.gz;
	installPhase = ''
		mkdir -p $out/share/icons
		tar -xzf $src -C $out/share/icons
	'';
}
