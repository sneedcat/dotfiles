local ts_config = require "nvim-treesitter.configs"

ts_config.setup {
  ensure_installed = O.treesitter.ensure_installed,
  highlight = O.treesitter.highlight,
  indent = { enable = false },
  playground = { enable = true },
  autotag = { enable = true },
  context_commentstring = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<Enter>",
      node_incremental = "<Enter>",
      node_decremental = "<BS>",
    },
  },
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<localleader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<localleader>A"] = "@parameter.inner",
      },
    },
    lsp_interop = {
      enable = true,
    },
  },
}

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.jsonc.used_by = "json"
parser_config.css.used_by = "rasi"

-- add markdown (credit: folke)
parser_config.markdown = {
  install_info = {
    url = "https://github.com/ikatyang/tree-sitter-markdown",
    files = { "src/parser.c", "src/scanner.cc" },
  },
}

parser_config.nix = {
  install_info = {
    url = "https://github.com/cstrahan/tree-sitter-nix",
    files = { "src/parser.c", "src/scanner.cc" },
  },
}
