vim.opt.number = true           -- Line numbers visible
vim.opt.relativenumber = true   -- Other Lines get a number relative to the current
vim.opt.scrolloff = 8           -- Nº of lines below/above before scrolling vertically
vim.opt.sidescrolloff = 10      -- Nº of characters in front/back before scrolling horizontally

vim.opt.wrap = true             -- ###################
vim.opt.linebreak = true        -- Smart Line Wrapping
vim.opt.breakindent = true      -- ###################

vim.opt.colorcolumn = "80,100"  -- Columns Highlighted

vim.opt.backup = false          -- Don't create backup files (filename~)
vim.opt.writebackup = false     -- Don't create backup before overwriting
vim.opt.swapfile = false        -- Don't create swap files (.filename.swp)
vim.opt.undofile = true         -- Enable persistent undo (better than swap files)

vim.opt.tabstop = 4             -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4          -- Number of spaces for auto-indentation
vim.opt.expandtab = false       -- Use tab characters instead of spaces
vim.opt.smartindent = true      -- Smart auto-indentation