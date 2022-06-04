local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use 'kyazdani42/nvim-web-devicons'
  use 'lewis6991/impatient.nvim'
  use "psliwka/vim-smoothie"
  use "nvim-lua/plenary.nvim"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }


  use({ "catppuccin/nvim", as = "catppuccin" })
  use "lukas-reineke/indent-blankline.nvim"
  
  use {
    "nvim-lualine/lualine.nvim",
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  --- Escape
  use "rainbowhxch/accelerated-jk.nvim"
  use "jdhao/better-escape.vim"

  use "tpope/vim-eunuch"
  use "andymass/vim-matchup"
  use "tpope/vim-unimpaired"
  use "tpope/vim-repeat"
  use "ggandor/leap.nvim"
  use "farmergreg/vim-lastplace"

  --- Editing
  use "tpope/vim-surround"
  use "cohama/lexima.vim"
  
  --- Quickfix enhancements
  use {'kevinhwang91/nvim-bqf', ft = 'qf'}
  
  --- Git
  use {
    'ruifm/gitlinker.nvim',
    requires = 'nvim-lua/plenary.nvim',
  }
  
  --- Buffers
  use 'famiu/bufdelete.nvim'
  use {
    "akinsho/bufferline.nvim",
    tag = "*",
    requires = "kyazdani42/nvim-web-devicons"
  }

  --- FuzzyFinder
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --- Splits
  use('mrjones2014/smart-splits.nvim')
  
  if packer_bootstrap then
    require('packer').sync()
   end
end)
