{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
	};

	outputs = { self, nixpkgs, ... }@inputs: {
		nixosConfigurations = {
			e14nix = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				modules = [ ./configuration.nix 
					./e14-hard.nix
				];
			};
			eltnix = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				modules = [ ./configuration.nix 
					./eltnix-hard.nix
				];
			};
			x150nix = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				modules = [ ./configuration.nix 
					./x150nix-hard.nix
				];
			};
		};
	};
}
