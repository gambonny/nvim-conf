vim.g.mapleader = " "
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
  let g:lightline = {'colorscheme': 'catppuccin'}
  let g:indent_blankline_use_treesitter = v:true
  let g:indent_blankline_show_current_context = v:true
  let g:vrc_trigger = '<C-y>'
  let g:better_escape_shortcut = 'jj'
  hi link AerialClass Type
  hi link AerialClassIcon Special
  hi link AerialFunction Special
  hi AerialFunctionIcon guifg=#cb4b16 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi link AerialLine QuickFixLine
  hi AerialLineNC guibg=Gray
  hi link AerialGuide Comment
  hi AerialGuide1 guifg=Red
  hi AerialGuide2 guifg=Blue
]]
