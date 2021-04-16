require 'plugins.lsp.lua'
require 'plugins.lsp.js-ts'

local opts = { noremap = true, silent = true }

Keybind.g({
  { 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts },
  { 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts },
  { 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts },
  { 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts },
  { 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts },
  { 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts },
  { 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts },
  { 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts },
  { 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts },
  { 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts },
  { 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts },
  { 'n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts },
  { 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts },
  { 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts },
  { 'n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts }
})

local function documentHighlight(client, bufnr)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
            [[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
            false
        )
    end
end

local lsp_config = {}

lsp_config.common_on_attach = function(client, bufnr)
    documentHighlight(client, bufnr)
end

return lsp_config

