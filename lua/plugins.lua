local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

execute 'autocmd BufWritePost plugins.lua PackerCompile'

return require("packer").startup(function (use)
  use 'wbthomason/packer.nvim'

  -- General plugins
  use 'tpope/vim-sensible'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use { 'mg979/vim-visual-multi', branch = 'master' }
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
  use 'kyazdani42/nvim-tree.lua'
  use 'vimwiki/vimwiki'
  use 'windwp/nvim-autopairs'
  use 'glepnir/galaxyline.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' }
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'editorconfig/editorconfig-vim'

  use 'wakatime/vim-wakatime'

  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'

  use 'nanotech/jellybeans.vim' -- Theme
end)
