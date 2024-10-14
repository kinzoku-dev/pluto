{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    nixpkgs,
    nvf,
    ...
  } @ inputs: let
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    forAllSystems = nixpkgs.lib.genAttrs systems;

    configModule = import ./config;
  in {
    packages = forAllSystems (system: {
      default =
        (nvf.lib.neovimConfiguration {
          modules = [configModule];
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
        })
        .neovim;
    });

    devShells = forAllSystems (system: {
      default = import ./devshell.nix {
        inherit inputs;
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      };
    });
  };
}
