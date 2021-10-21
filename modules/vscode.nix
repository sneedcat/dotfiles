{ config, pkgs, lib, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    userSettings = {
      "update.channel" = "none";
      "editor.fontFamily" = "'PragmataPro Mono Liga', 'Iosveka', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'";
      "editor.fontSize" = 16;
      "workbench.colorTheme" = "One Dark";
      "nix.enableLanguageServer" = true;
      "editor.fontLigatures" = true;
    };
    extensions = with pkgs.vscode-extensions; [
      # bbenoist.Nix
      matklad.rust-analyzer
      haskell.haskell
      vadimcn.vscode-lldb
      jnoortheen.nix-ide
      justusadam.language-haskell
      antfu.icons-carbon
      mskelton.one-dark-theme
      ms-python.python
    ];
  };

}
