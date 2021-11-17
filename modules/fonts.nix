{ config, pkgs, home, ... }:{   
    home.packages = with pkgs; [
        noto-fonts-cjk
        noto-fonts-emoji
        helvetica-now-micro-otf
        helvetica-now-text-otf
        circularstd-otf
        fk-display
        font-awesome
        joypixels
        helvetica-now-display-otf
        newyork
        pragmatapro
    ];
}
