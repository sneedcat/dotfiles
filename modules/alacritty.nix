{ config, pkgs, home, lib, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        title = "Alacritty";
        class = {
          instance = "Alacritty";
          general = "Alacritty";
        };
        gtk_theme_variant = "dark";
      };
      scrolling.history = 10000;
      font = {
        normal.family = "PragmataPro Mono";
        bold.family = "PragmataPro Mono";
        italic.family = "PragmataPro Mono";
        bold_italic.family = "PragmataPro Mono";
        size = 15.0;
      };
      colors = {
        primary = {
          background = "#1d1f21";
          foreground = "#c5c8c6";
          dim_foreground = "#828482";
          bright_foreground = "#eaeaea";
        };
        cursor = {
          text = "CellBackground";
          cursor = "CellForeground";
        };
        vi_mode_cursor = {
          text = "CellBackground";
          cursor = "CellForeground";
        };
        search = {
          matches = {
            foreground = "#000000";
            background = "#ffffff";
          };
          focused_match = {
            foreground = "#ffffff";
            background = "#000000";
          };
          bar = {
            background = "#c5c8c6";
            foreground = "#1d1f21";
          };
        };
        hints = {
          start = {
            foreground = "#1d1f21";
            background = "#e9ff5e";
          };
          end = {
            foreground = "#e9ff5e";
            background = "#1d1f21";
          };
        };
        line_indicator = {
          foreground = "None";
          background = "None";
        };
        normal = {
          black = "#1d1f21";
          red = "#cc6666";
          green = "#b5bd68";
          yellow = "#f0c674";
          blue = "#81a2be";
          magenta = "#b294bb";
          cyan = "#8abeb7";
          white = "#c5c8c6";
        };
        bright = {
          black = "#666666";
          red = "#d54e53";
          green = "#b9ca4a";
          yellow = "#e7c547";
          blue = "#7aa6da";
          magenta = "#c397d8";
          cyan = "#70c0b1";
          white = "#eaeaea";
        };
      };
      cursor.style.shape = "Block";
      shell.program = "zsh";
      key_bindings = [
        {
          key = "Paste";
          action = "Paste";
        }
        {
          key = "Copy";
          action = "Copy";
        }
        {
          key = "L";
          mods = "Control";
          action = "ClearLogNotice";
        }
        {
          key = "L";
          mods = "Control";
          mode = "~Vi|~Search";
          chars = "x0c";
        }
        {
          key = "PageUp";
          mods = "Shift";
          mode = "~Alt";
          action = "ScrollPageUp";
        }
        {
          key = "PageDown";
          mods = "Shift";
          mode = "~Alt";
          action = "ScrollPageDown";
        }
        {
          key = "Home";
          mods = "Shift";
          mode = "~Alt";
          action = "ScrollToTop";
        }
        {
          key = "End";
          mods = "Shift";
          mode = "~Alt";
          action = "ScrollToBottom";
        }
        {
          key = "Insert";
          mods = "Shift";
          action = "PasteSelection";
        }
        {
          key = "Key0";
          mods = "Control";
          action = "ResetFontSize";
        }
        {
          key = "Equals";
          mods = "Control";
          action = "IncreaseFontSize";
        }
        {
          key = "Plus";
          mods = "Control";
          action = "IncreaseFontSize";
        }
        {
          key = "NumpadAdd";
          mods = "Control";
          action = "IncreaseFontSize";
        }
        {
          key = "Minus";
          mods = "Control";
          action = "DecreaseFontSize";
        }
        {
          key = "NumpadSubtract";
          mods = "Control";
          action = "DecreaseFontSize";
        }
        {
          key = "V";
          mods = "Control|Shift";
          mode = "~Vi";
          action = "Paste";
        }
        {
          key = "C";
          mods = "Control|Shift";
          action = "Copy";
        }
        {
          key = "F";
          mods = "Control|Shift";
          mode = "~Search";
          action = "SearchForward";
        }
        {
          key = "B";
          mods = "Control|Shift";
          mode = "~Search";
          action = "SearchBackward";
        }
        {
          key = "C";
          mods = "Control|Shift";
          mode = "Vi|~Search";
          action = "ClearSelection";
        }
      ];
    };
  };
}
