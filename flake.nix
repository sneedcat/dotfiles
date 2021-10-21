{
  description = "Home manager flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    home-manager.url = "github:nix-community/home-manager";
    nix-fonts.url = "github:impostersussy/nix-fonts";
    megu-nixpkgs.url = "github:meguminloli/megu-nixpkgs";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, ... }@inputs: {
    homeConfigurations = {
      megu = inputs.home-manager.lib.homeManagerConfiguration {
        system = "x86_64-linux";
        homeDirectory = "/home/megu";
        username = "megu";
        stateVersion = "21.11";
        configuration = { config, lib, pkgs, ... }: {
          nixpkgs.config = {
            allowUnfree = true;
            joypixels.acceptLicense = true;
          };
          nixpkgs.overlays = [
            inputs.neovim-nightly-overlay.overlay
            inputs.fenix.overlay
            inputs.nix-fonts.overlay
            inputs.megu-nixpkgs.overlay
          ];
          home = {
            stateVersion = "21.11";
            sessionVariables = {
              GDK_BACKEND = "wayland";
              QT_QPA_PLATFORM = "wayland";
              SDL_VIDEODRIVER = "wayland";
            };
          };

          fonts.fontconfig.enable = true;

          # Let Home Manager install and manage itself.
          programs.home-manager.enable = true;

          imports = [
            ./modules/compilers.nix
            ./modules/browser.nix
            ./modules/shell.nix
            ./modules/vscode.nix
            ./modules/alacritty.nix
            ./modules/packages.nix
            ./modules/starship.nix
            ./modules/fonts.nix
            ./modules/misc.nix
            ./modules/mpv.nix
            ./modules/neovim.nix
          ];
        };
      };
    };
  };
}
