require('impatient')
require('autocmds')
require('keymaps')
require('plugins')
require('settings')


require('telescope').setup()
require('telescope').load_extension('fzf')
require('leap').set_default_keymaps()
require"gitlinker".setup()

require'nvim-web-devicons'.setup {
 default = true;
}

require('lualine').setup {
  options = {
    theme = "catppuccin"
  }
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "typescript", "lua", "rust" },
  sync_install = false,
  highlight = {
    enable = true,
  },
}

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}

require('bufferline').setup {
  options = {
    diagnostics = "coc",
    show_buffer_close_icons = false,
  }
}
