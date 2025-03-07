{
services.swaync = {
	enable = true;
	settings = {
		positionX = "center";
		positionY = "top";
		control-center-radius = 1;
		fit-to-screen = true;
		layer-shell = true;
		layer = "overlay";
		cssPriority = "user";
		notification-icons-size = 64;
		notification-body-image-height = 100;
		notification-body-image-width = 200;
		timeout = 10;
		timeout-low = 5;
		timeout-critical = 0;


		widgets = [
			"inhibitors"
			"dnd"
			"mpris"
			"notifications"
		];

		widget-config = {
			title = {
				text = "Notifications";
				clear-all-button = true;
				button-text = "Clear All";
			};

			dnd = {
				text = "No molestar";
			};

			mpris = {
				image-size = 96;
				blur = true;
			};
		};
	};
};
}
