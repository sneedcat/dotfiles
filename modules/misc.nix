{ config, pkgs, home, ... }: {
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [ obs-gstreamer ];
  };
  programs.bottom = {
    enable = true;
    settings = {
      flags = {
        color = "default";
        tree = true;
        dot_marker = true;
        left_legend = true;
        mem_as_value = true;
      };
    };
  };
}
