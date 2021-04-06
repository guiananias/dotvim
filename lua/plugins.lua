vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function (use)
	-- General plugins
	use 'tpope/vim-sensible'
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'
	use 'tpope/vim-dispatch'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
        use { 'mg979/vim-visual-multi', branch = 'master' }
	use 'iamcco/markdown-preview.nvim'

	use 'neovim/nvim-lspconfig'
	-- use 'kabouzeid/nvim-lspinstall'
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/vim-vsnip'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use 'editorconfig/editorconfig-vim'

	use 'wakatime/vim-wakatime'

	use 'ryanoasis/vim-devicons'

	use 'nanotech/jellybeans.vim' -- Theme
end)
