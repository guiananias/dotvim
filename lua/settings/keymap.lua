-- TODO: Idk if has a spread operator in Lua,
-- but would be interesting to use something like it here
local silent_opts = { noremap = true, silent = true }
local silent_expr_opts = { noremap = true, silent = true, expr = true }

vim.g.mapleader = ' '

Keybind.g({
  -- editor

  -- TODO: Improve this CTRL + S to save file
  { 'n', '<C-s>', ':w<CR>', silent_opts },
  { 'i', '<C-s>', '<Esc>:w<CR>a', silent_opts },

  { 'n', '<C-c>', 'y$', silent_opts },
  { 'i', '<C-c>', '<Esc>y$i', silent_opts },

  { 'n', '<C-x>', 'dd', silent_opts },
  { 'i', '<C-x>', '<C-o>dd', silent_opts },

  -- CTRL + Z to undo the last change
  { 'n', '<C-z>', ':u<CR>', silent_opts },
  { 'i', '<C-z>', '<C-o>:u<CR>' },

  -- Alt + Up Arrow to move line up
  { 'n', '<A-Up>', ':m .-2<CR>==', silent_opts },
  { 'i', '<A-Up>', '<Esc>:m .-2<CR>==gi', silent_opts },

  -- Alt + Down Arrow to move line down
  { 'n', '<A-Down>', ':m .+1<CR>==', silent_opts },
  { 'i', '<A-Down>', '<Esc>:m .+1<CR>==gi', silent_opts },
 
  -----------------------------------------------------------------------------
  -- PLUGINS
  -----------------------------------------------------------------------------
  -- nvim-compe
  { 'i', '<C-Space>', 'compe#complete()', silent_expr_opts },
  { 'i', '<CR>', 'compe#confirm("<CR>")', silent_expr_opts },
  { 'i', '<C-e>', 'compe#close("<C-e>")', silent_expr_opts },

  -- nvim-lspconfig
  { 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', silent_opts },
  { 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', silent_opts },
  { 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', silent_opts },
  { 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', silent_opts },
  { 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', silent_opts },
  { 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', silent_opts },
  { 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', silent_opts },
  { 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', silent_opts },
  { 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', silent_opts },
  { 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', silent_opts },
  { 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', silent_opts },
  { 'n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', silent_opts },
  { 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', silent_opts },
  { 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', silent_opts },
  { 'n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', silent_opts },

  -- nvim-tree
  { 'n', '<C-b>', ':NvimTreeToggle<CR>', silent_opts },

  -- telescope.nvim
  { 'n', '<Leader>p', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], silent_opts },
  { 'n', '<Leader>pb', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], silent_opts },
  { 'n', '<Leader>ph', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], silent_opts },
  { 'n', '<Leader>p', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], silent_opts },
  { 'n', '<Leader>po', [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]], silent_opts }
})

