vim.g.mapleader = ";"

require('impatient')
require('keymaps')
require('autocmds')
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
require('telescope').load_extension('harpoon')

require('leap').set_default_keymaps()
require('gitlinker').setup()
require('colorizer').setup()
require('incline').setup()
require('winshift').setup()
require('gitsigns').setup()

require('nvim-web-devicons').setup {
  default = true,
}

require('lualine').setup {
  sections = {
    lualine_c = { 'aerial' },
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
local null_ls = require('null-ls')

local null_opts = lsp.build_options('null-ls', {
  on_attach = function(client)
    vim.api.nvim_create_autocmd("BufWritePre", {
      desc = "Auto format before save",
      pattern = "<buffer>",
      callback = vim.lsp.buf.format,
    })
  end
})

-- set installed lsp
lsp.ensure_installed({
  "html",
  "cssls",
  "tsserver",
  "eslint",
  "sumenko_lua",
})

null_ls.setup({
  on_attach = null_opts.on_attach,
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint,
  }
})

lsp.preset('recommended')
lsp.setup()

require("lspconfig").vimls.setup {
  on_attach = function(client)
    require("aerial").on_attach(client)
    require 'illuminate'.on_attach(client)
  end
}
