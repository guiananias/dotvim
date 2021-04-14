local cmd = vim.api.nvim_command

cmd('syntax on')
cmd('filetype plugin indent on')

Option.g({
  textwidth = 80,
  wrap = false,

  ttyfast = true,

  ignorecase = true,
  smartcase = true,
  hlsearch = true,
  incsearch = true,

  expandtab = true,
  smarttab = true,
  tabstop = 2,
  shiftwidth = 2,

  splitbelow = true,
  splitright = true,

  backup = false,
  swapfile = false,
  writebackup = false,

  laststatus = 0,			-- Stop showing the status on the bottom bar
  showmode = false,			-- Stop showing the current mode

  hidden = true,

  clipboard = 'unnamedplus',
  backspace = 'indent,eol,start',

  completeopt = 'menuone,noselect'
})

Option.w({
  number = true,
  signcolumn = 'yes',

  colorcolumn = '80',

  cursorline = true			-- Highlight current line
})
