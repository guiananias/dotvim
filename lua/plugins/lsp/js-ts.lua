-- run :LspInstall typescript

local data = vim.fn.stdpath('data')
local tsserver_root_path = data .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server"

local function tsserver_on_attach(client, bufnr)
    require 'plugins.lsp'.common_on_attach(client, bufnr)
    client.resolved_capabilities.document_formatting = false
end

require'lspconfig'.tsserver.setup {
  cmd = { tsserver_root_path, "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  on_attach = tsserver_on_attach,

  root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
  settings = { documentFormatting = false },
}
