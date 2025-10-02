-- LSP Configuration

-- Diagnostic configuration
vim.diagnostic.config({
  -- Show diagnostics in virtual text (inline)
  virtual_text = {
    enabled = true,
    source = "if_many",  -- Show source if multiple sources
    prefix = "●",        -- Prefix for virtual text
  },
  
  -- Show diagnostics in signs column
  signs = {
    active = true,
  },
  
  -- Update diagnostics while typing
  update_in_insert = false,
  
  -- Underline diagnostics
  underline = true,
  
  -- Sort diagnostics by severity
  severity_sort = true,
  
  -- Floating window config for hover diagnostics
  float = {
    focused = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

-- Diagnostic signs in the gutter
local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "💡" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

-- Default capabilities (for autocompletion support later)
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Modern LSP server configurations using vim.lsp.config
local servers = {
  lua_ls = {
    settings = {
      Lua = {
        runtime = { version = "LuaJIT" },
        diagnostics = {
          globals = { "vim" },  -- Recognize 'vim' global
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = { enable = false },
      },
    },
  },
  
  -- Other servers with default config
  vimls = {},
  ts_ls = {},
  pyright = {},
  html = {},
  cssls = {},
  jsonls = {},
  marksman = {},
  bashls = {},
  jdtls = {},
  rust_analyzer = {},
  gopls = {},
  clangd = {},
}

-- Setup each LSP server using the modern approach
for server_name, config in pairs(servers) do
  -- Check if vim.lsp.config exists (Neovim 0.11+)
  if vim.lsp.config then
    -- Modern approach for Neovim 0.11+
    vim.lsp.config(server_name, vim.tbl_deep_extend("force", {
      capabilities = capabilities,
      on_attach = _G.lsp_on_attach,
    }, config))
  else
    -- Fallback to lspconfig for older versions
    local lspconfig = require("lspconfig")
    local opts = vim.tbl_deep_extend("force", {
      capabilities = capabilities,
      on_attach = _G.lsp_on_attach,
    }, config)
    lspconfig[server_name].setup(opts)
  end
end