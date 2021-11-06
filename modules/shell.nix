{ config, pkg, home, ... }: {
  programs.home-manager.enable = true;
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    enableCompletion = true;
    shellAliases = {
      "home-update" = "home-manager switch --flake ~/.config/nixpkgs/#$USER -v";
    };
  };

  programs.exa = {
    enable = true;
    enableAliases = true;
  };

  programs.bat = { enable = true; };

  programs.skim = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };

  programs.git = {
    enable = true;
    userName = "meguminloli";
    userEmail = "meguminloli@protonmail.com";
    delta.enable = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
      enableFlakes = true;
    };
  };

  programs.nix-index = {
    enable = true;
    enableZshIntegration = true;
  };
}
