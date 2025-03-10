{
programs.joplin-desktop = {
	enable = true;
	sync = {
		interval = "5m";
		target = joplin-server;
	};

};
}
