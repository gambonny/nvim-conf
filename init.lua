require('impatient')
require('autocmds')
require('keymaps')
require('plugins')
require('settings')

require('telescope').setup {
  extensions = {
    aerial = {
      show_nesting = true
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('aerial')

require('leap').set_default_keymaps()
require('gitlinker').setup()
require('colorizer').setup()
require('incline').setup()
require('winshift').setup()

require('nvim-web-devicons').setup {
  default = true,
}

require('lualine').setup {
  sections = {
    lualine_c={'aerial'},
  },
  options = {
    theme = 'catppuccin',
  }
}

require('nvim-treesitter.configs').setup {
  ensure_installed = { 'typescript', 'lua', 'rust' },
  sync_install = false,
  highlight = {
    enable = true,
  },
}

require('indent_blankline').setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}

require('bufferline').setup {
  options = {
    diagnostics = 'nvim_lsp',
    show_buffer_close_icons = false,
  }
}

require("aerial").setup({
  backends = { "treesitter", "lsp", "markdown" },
  on_attach = function(bufnr)
    -- Toggle the aerial window with <leader>a
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<A-a>', '<cmd>AerialToggle!<CR>', {})
    -- Jump forwards/backwards with '{' and '}'
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '{', '<cmd>AerialPrev<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '}', '<cmd>AerialNext<CR>', {})
    -- Jump up the tree with '[[' or ']]'
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']]', '<cmd>AerialNextUp<CR>', {})
  end
})

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

require("lspconfig").vimls.setup{
  on_attach = require("aerial").on_attach,
}
