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
		ddrescue
		emacs
		exfat
		firefox
		git
		hdparm
		john
		kitty
		lm_sensors
		most
		neovim
		nmap
		nnn
		parted
		pciutils
		smartmontools
		stow
		swaybg
		testdisk
		tmux
		usbutils
		unzip
		vim
		waybar
		wget
		wofi
		zathura
		zip
	];
}
