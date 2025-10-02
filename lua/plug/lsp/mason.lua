-- Mason Configuration
require("mason").setup({
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

-- Mason-LSPconfig setup
require("mason-lspconfig").setup({
  -- Automatically install these LSP servers (matching your treesitter parsers)
  ensure_installed = {
    "lua_ls",           -- lua
    "vimls",            -- vim
    "ts_ls",            -- javascript, typescript (changed from ts_server)
    "pyright",          -- python
    "html",             -- html
    "cssls",            -- css
    "jsonls",           -- json
    "marksman",         -- markdown
    "bashls",           -- bash
    "jdtls",            -- java
    "rust_analyzer",    -- rust
    "gopls",            -- go
    "clangd",           -- c, cpp
  },
  
  -- Automatically install LSP servers when you open supported files
  automatic_installation = true,
})