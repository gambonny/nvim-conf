local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'lewis6991/impatient.nvim'
  use 'psliwka/vim-smoothie'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  --- Colors
  use({ 'catppuccin/nvim', as = 'catppuccin' })
  use 'lukas-reineke/indent-blankline.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'RRethy/vim-illuminate'
  use 'chentoast/marks.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  --- Escape
  use 'rainbowhxch/accelerated-jk.nvim'
  use 'jdhao/better-escape.vim'

  use 'tpope/vim-eunuch'
  use 'andymass/vim-matchup'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-repeat'
  use 'ggandor/leap.nvim'
  use 'farmergreg/vim-lastplace'

  --- Editing
  use 'tpope/vim-surround'
  use 'cohama/lexima.vim'
  use 'mattn/emmet-vim'
  use { 'junegunn/fzf', run = function()
    vim.fn['fzf#install']()
  end
  }

  --- Git
  use 'lewis6991/gitsigns.nvim'
  use {
    'ruifm/gitlinker.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  --- Buffers
  use 'famiu/bufdelete.nvim'
  use 'b0o/incline.nvim'
  use 'sindrets/winshift.nvim'
  use {
    'akinsho/bufferline.nvim',
    tag = '*',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  --- FuzzyFinder
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  --- Splits
  use 'mrjones2014/smart-splits.nvim'
  use 'dhruvasagar/vim-zoom'

  --- LSP
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets'
    },
  }

  use 'stevearc/aerial.nvim'
  use 'ThePrimeagen/harpoon'
  use 'junegunn/goyo.vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
