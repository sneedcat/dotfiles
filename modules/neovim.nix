{ config, pkgs, libs, ...}:
{
  home.packages = with pkgs; [
    neovim
    sumneko-lua-language-server
    stylua
    shellcheck
    black
    python39Packages.isort
    pyright
    nodePackages_latest.vscode-html-languageserver-bin
    nodePackages_latest.vscode-css-languageserver-bin
    fzf
  ];
  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixpkgs/modules/nvim";
}