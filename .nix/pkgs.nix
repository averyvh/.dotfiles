{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};
	fonts.packages = with pkgs; [
		aporetic-bin
		font-awesome
	];
	environment.systemPackages = with pkgs; [
		_7zz
		acpi
		bibata-cursors
		brightnessctl
		btop
		calibre
		cifs-utils
		ddrescue
		emacs
		exfat
		firefox
		gcc
		git
		hdparm
		john
		keepassxc
		kitty
		lm_sensors
		most
		ncmpcpp
		neovim
		nmap
		nnn
		parted
		pavucontrol
		pciutils
		rsync
		smartmontools
		stow
		swaybg
		swaylock
		testdisk
		tmux
		usbutils
		ungoogled-chromium
		unzip
		vim
		waybar
		wget
		wireguard-tools
		wofi
		yt-dlp
		zathura
		zip
	];
}
