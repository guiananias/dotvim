-- TODO: Idk if has a spread operator in Lua,
-- but would be interesting to use something like it here
local silent_opts = { noremap = true, silent = true }
local silent_expr_opts = { noremap = true, silent = true, expr = true }

-- Nvim Compe
Keybind.g({
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
  { 'n', '<C-b>', ':NvimTreeToggle<CR>', silent_opts }
})

