-- LSP Handlers

-- LSP attach function (runs when LSP connects to buffer)
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  
end

-- Export the on_attach function for use in lspconfig
_G.lsp_on_attach = on_attach