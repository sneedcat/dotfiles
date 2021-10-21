{
  description = "Home manager flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    home-manager.url = "github:nix-community/home-manager";
  };
  outputs = {self, ... }@inputs:
  {
    homeConfigurations = {
      megu = inputs.home-manager.lib.homeManagerConfiguration {
        system = "x86_64-linux";
        homeDirectory = "/home/megu";
        username = "megu";
        configuration = { config, lib, pkgs, ... }:
        {
          nixpkgs.config = { 
            allowUnfree = true;
            joypixels.acceptLicense = true;
          };
          nixpkgs.overlays = [ inputs.neovim-nightly-overlay.overlay ];

          # This value determines the Home Manager release that your
          # configuration is compatible with. This helps avoid breakage
          # when a new Home Manager release introduces backwards
          # incompatible changes.
          #
          # You can update Home Manager without changing this value. See
          # the Home Manager release notes for a list of state version
          # changes in each release.
          home.stateVersion = "20.09";
          fonts.fontconfig.enable = true;

          # Let Home Manager install and manage itself.
          programs.home-manager.enable = true;

          imports = [
            ./modules/browser.nix
            ./modules/shell.nix
            ./modules/vscode.nix
            ./modules/alacritty.nix
            ./modules/packages.nix
            ./modules/starship.nix
            ./modules/fonts.nix
          ];
        };
      };
    };
  };
}

