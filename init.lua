require('impatient')
require('plugins')

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd[[
  colorscheme catppuccin
  set mouse=a
  set autoindent
  set expandtab
  set shiftwidth=2
  set smartindent
  set softtabstop=2
  set tabstop=2
  set noswapfile
  set number relativenumber
  set hidden
  set nobackup
  set nowritebackup
  set encoding=utf-8
  set fileencoding=utf-8
  set noshowmode
  set noshowcmd
  set shortmess+=F
  set cmdheight=1
  set updatetime=300
  set splitbelow
  set splitright
  set inccommand=split
  set laststatus=3
  vnoremap y myY`y
  vnoremap Y myY`y
  highlight LineHighlight ctermbg=darkgray guibg=#694784
  onoremap ie :exec "normal! ggVG"<cr>
  onoremap iv :exec "normal! HVL"<cr>
  let g:indent_blankline_use_treesitter = v:true
  let g:indent_blankline_show_current_context = v:true
  let g:vrc_trigger = '<C-y>'
  let g:better_escape_shortcut = 'jj'
]]

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

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')


-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files <CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tb", ":Telescope buffers <CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tm", ":Telescope marks <CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tg", ":Telescope grep_string<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tl", ":Telescope live_grep<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tc", ":Telescope git_commits<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>td", ":Telescope git_bcommits<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>th", ":Telescope git_branches<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>ts", ":Telescope git_status<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tz", ":Telescope current_buffer_fuzzy_find<CR>", {})
