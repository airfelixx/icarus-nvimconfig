-- ToggleTerm Configuration
require("toggleterm").setup({
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  
  open_mapping = [[<C-\>]],           -- Ctrl+\ to toggle
  hide_numbers = true,                -- Hide line numbers in terminal
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,                 -- Darken terminal background
  start_in_insert = true,            -- Start in insert mode
  insert_mappings = true,            -- Apply mappings in insert mode
  terminal_mappings = true,          -- Apply mappings in terminal mode
  persist_size = true,
  persist_mode = true,               -- Persist terminal mode
  direction = "horizontal",          -- horizontal, vertical, tab, float
  close_on_exit = true,              -- Close terminal when process exits
  shell = vim.o.shell,               -- Use default shell
  auto_scroll = true,                -- Automatically scroll to bottom on output
  
  -- Float terminal settings
  float_opts = {
    border = "curved",               -- Border style for floating terminal
    width = 120,
    height = 30,
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

-- Custom terminal functions
local Terminal = require("toggleterm.terminal").Terminal

-- Function to get current file directory
local function get_current_dir()
  local current_file = vim.api.nvim_buf_get_name(0)
  if current_file ~= "" then
    return vim.fn.fnamemodify(current_file, ":p:h")
  else
    return vim.fn.getcwd()
  end
end

-- Create terminals that start in current file directory
local function create_terminal_with_dir(opts)
  local dir = get_current_dir()
  local full_opts = vim.tbl_extend("force", opts, {
    dir = dir,  -- Set the directory directly
  })
  return Terminal:new(full_opts)
end

-- Override the default toggle to use current directory
vim.keymap.set("n", "<C-\\>", function()
  local dir = get_current_dir()
  vim.cmd("ToggleTerm dir=" .. vim.fn.shellescape(dir))
end, { desc = "Toggle terminal in current file directory" })

-- Custom terminal functions
function _FLOAT_TOGGLE()
  local dir = get_current_dir()
  local float_term = Terminal:new({
    direction = "float",
    dir = dir,
    float_opts = {
      border = "curved",
    },
  })
  float_term:toggle()
end

function _HORIZONTAL_TOGGLE()
  local dir = get_current_dir()
  local horizontal_term = Terminal:new({
    direction = "horizontal",
    size = 15,
    dir = dir,
  })
  horizontal_term:toggle()
end

function _VERTICAL_TOGGLE()
  local dir = get_current_dir()
  local vertical_term = Terminal:new({
    direction = "vertical",
    size = vim.o.columns * 0.4,
    dir = dir,
  })
  vertical_term:toggle()
end