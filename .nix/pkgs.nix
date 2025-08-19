{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};
	fonts.packages = with pkgs; [
		aporetic-bin
		nerd-fonts.hack
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
		kitty
		lm_sensors
		most
		ncmpcpp
		neovim
		nmap
		nnn
		parted
		pciutils
		rsync
		smartmontools
		stow
		swaybg
		testdisk
		tmux
		usbutils
		ungoogled-chromium
		unzip
		vim
		waybar
		wget
		wofi
		zathura
		zip
	];
}
