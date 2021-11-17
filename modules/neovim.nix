{ config, pkgs, libs, ...}:
{
  home.packages = with pkgs; [
    neovim
    sumneko-lua-language-server
    stylua
    shellcheck
    black
    pyright
    nodePackages_latest.vscode-html-languageserver-bin
    nodePackages_latest.vscode-css-languageserver-bin
    fzf
    lldb_13
    clang_13
  ];
  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixpkgs/modules/nvim";
}
