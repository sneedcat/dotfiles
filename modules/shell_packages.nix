{ config, pkgs, home, ... }: {
  home.packages = with pkgs; [
    ffmpeg
    yt-dlp
    tealdeer
    ripgrep
    neovim
    wget
    ripgrep-all
    curl
    aria
    rnix-lsp
    taskus
    fd
    hyperfine
    hexyl
    tokei
    grex
    bandwhich
    delta
    macchina
    ffsend
    nixpkgs-fmt
  ];
}
