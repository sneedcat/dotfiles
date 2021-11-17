{ config, pkgs, home, lib, ... }: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[λ](bold green)";
        error_symbol = "[λ](bold red)";
      };
      memory_usage = {
        disabled = false;
        threshold = 70;
      };
      cmd_duration = { min_time = 5; };
      directory = {
        truncation_length = 100;
        truncate_to_repo = false;
        style = "yellow";
        format = lib.concatStrings [
          "[:"
          "$path"
          "]("
          "$style"
          ")["
          " $read_only"
          "]("
          "$read_only_style"
          ")"
        ];
      };
      git_branch = {
        symbol = "";
        style = "bold yellow";
        format =
          lib.concatStrings [ "[(" "$symbol" "$branch" ")](" "$style" ") " ];
      };
      git_status = {
        conflicted = "🏳";
        ahead = "🏎💨";
        behind = "😰";
        diverged = "😵";
        untracked = "🤷‍";
        stashed = "📦";
        modified = "📝";
        staged = "➕";
        renamed = "👅";
        deleted = "🗑";
      };
      status = {
        disabled = false;
        format = lib.concatStrings [
          "[\\["
          "$status"
          " - "
          "$common_meaning"
          "\\] ](purple)"
        ];
      };
      time = { disabled = false; };
      package = { disabled = true; };
      username = {
        show_always = true;
        style_user = "red";
      };
    };
    enableBashIntegration = true;
    enableZshIntegration = true;
  };
}
