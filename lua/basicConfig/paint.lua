-- Visual enhancements
vim.opt.termguicolors = true                           -- Enable 24-bit RGB colors

vim.cmd[[colorscheme tokyonight-night]]

-- Transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })      -- Transparent editor background  
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- Transparent floating windows