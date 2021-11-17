{ config, pkgs, home, ... }: {
  home.packages = with pkgs; [
    songrec
    lollypop
    gnome.gnome-boxes
    gnomeExtensions.hplip-menu
    multimc
    gnome.simple-scan
    gnome.gnome-tweaks
    tdesktop
    msedge
  ];
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [ obs-gstreamer ];
  };
}
