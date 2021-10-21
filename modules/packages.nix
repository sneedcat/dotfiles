{ config, pkgs, home, ... }:
{
  home.packages = with pkgs; [
    ffmpeg mpv
    tealdeer ripgrep
    neovim wget
    curl aria
    tdesktop lollypop
    songrec nerdfonts
    font-awesome joypixels
    noto-fonts-cjk noto-fonts-emoji
  ];
}
