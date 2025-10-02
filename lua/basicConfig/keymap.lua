-- Leader key == Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Vim Keymaps

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)       -- Leader+pv : Open the file explorer
vim.keymap.set("n", "<C-s>", vim.cmd.w)             -- Ctrl-s : Save file

-- Treesitter Keymaps

-- Leader+af : Select all the function
-- Leader+if : Select the content inside a function
-- Leader+ac : Select all the class
-- Leader+ic : Select the content inside a class

vim.keymap.set({"n", "v"}, "<leader>af", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.outer')<cr>", { desc = "Select around function" })
vim.keymap.set({"n", "v"}, "<leader>if", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.inner')<cr>", { desc = "Select inside function" })
vim.keymap.set({"n", "v"}, "<leader>ac", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.outer')<cr>", { desc = "Select around class" })
vim.keymap.set({"n", "v"}, "<leader>ic", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.inner')<cr>", { desc = "Select inside class" })

-- UndoTree Keymaps

-- Leader+u : Toggle UndoTree

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Telescope Keymaps

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- Leader+ff : Open file search
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")   -- Leader+fg : Open file grep
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- Harpoon Keymaps

vim.keymap.set("n", "<leader>a", function() require("harpoon"):list():add() end, { desc = "Add to harpoon" })                  -- Leader+a : Add current file to harpoon
vim.keymap.set("n", "<C-e>", function() _G.harpoon_telescope() end, { desc = "Open harpoon with telescope" })                  -- Ctrl+e : Open harpoon menu with Telescope UI
vim.keymap.set("n", "<C-1>", function() require("harpoon"):list():select(1) end, { desc = "Go to harpoon file 1" })            -- Ctrl+1 : Go to harpoon file 1
vim.keymap.set("n", "<C-2>", function() require("harpoon"):list():select(2) end, { desc = "Go to harpoon file 2" })            -- Ctrl+2 : Go to harpoon file 2
vim.keymap.set("n", "<C-3>", function() require("harpoon"):list():select(3) end, { desc = "Go to harpoon file 3" })            -- Ctrl+3 : Go to harpoon file 3
vim.keymap.set("n", "<C-4>", function() require("harpoon"):list():select(4) end, { desc = "Go to harpoon file 4" })            -- Ctrl+4 : Go to harpoon file 4

-- Comment Keymaps (Provided by Comment.nvim plugin)

-- gcc : Toggle line comment on current line
-- gbc : Toggle block comment on current line
-- gc{motion} : Comment using motion (e.g., gc3j for 3 lines down)
-- gb{motion} : Block comment using motion
-- gco : Add comment line below current line
-- gcO : Add comment line above current line
-- gcA : Add comment at end of current line

-- Visual mode:
-- gc : Toggle line comment on selection
-- gb : Toggle block comment on selection

-- Gitsigns Keymaps

vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })              -- Leader+gp : Preview Git hunk
vim.keymap.set("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggle blame" }) -- Leader+gt : Toggle Git blame
vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage hunk" })                  -- Leader+gs : Stage Git hunk
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })                  -- Leader+gr : Reset Git hunk
vim.keymap.set("n", "]h", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next hunk" })                            -- ]h : Go to next Git hunk
vim.keymap.set("n", "[h", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Previous hunk" })                        -- [h : Go to previous Git hunk

-- LSP Keymaps

-- Global LSP keymaps (work anywhere)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show diagnostic" })           -- Leader+e : Show diagnostic details
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })               -- [d : Go to previous diagnostic
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next diagnostic" })                   -- ]d : Go to next diagnostic  
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Diagnostic quickfix" })       -- Leader+q : Open diagnostic quickfix list

-- LSP Keymaps (only active when LSP is attached to buffer)
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Buffer local mappings
    local opts = { buffer = ev.buf }
    
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)                                          -- gD : Go to declaration
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)                                           -- gd : Go to definition
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)                                                 -- K : Show hover documentation
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)                                       -- gi : Go to implementation
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)                                    -- Ctrl+k : Show signature help
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)                         -- Leader+wa : Add workspace folder
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)                      -- Leader+wr : Remove workspace folder
    vim.keymap.set('n', '<leader>wl', function()                                                       -- Leader+wl : List workspace folders
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)                               -- Leader+D : Go to type definition
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)                                       -- Leader+rn : Rename symbol
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)                        -- Leader+ca : Code actions
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)                                           -- gr : Find references
    vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)       -- Leader+f : Format buffer
  end,
})

-- ToggleTerm Keymaps

vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })                        -- Ctrl+\ : Toggle default terminal
vim.keymap.set("n", "<leader>tf", "<cmd>lua _FLOAT_TOGGLE()<cr>", { desc = "Toggle floating terminal" }) -- Leader+tf : Toggle floating terminal
vim.keymap.set("n", "<leader>th", "<cmd>lua _HORIZONTAL_TOGGLE()<cr>", { desc = "Toggle horizontal terminal" }) -- Leader+th : Toggle horizontal terminal
vim.keymap.set("n", "<leader>tv", "<cmd>lua _VERTICAL_TOGGLE()<cr>", { desc = "Toggle vertical terminal" }) -- Leader+tv : Toggle vertical terminal

-- Terminal mode keymaps
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n><cmd>ToggleTerm<cr>", { desc = "Toggle terminal from terminal mode" }) -- Ctrl+\ : Exit terminal and close
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Terminal window left" })                      -- Ctrl+h : Move to left window
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Terminal window down" })                      -- Ctrl+j : Move to window below
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Terminal window up" })                        -- Ctrl+k : Move to window above
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Terminal window right" })                     -- Ctrl+l : Move to right window

