-- Autopairs Configuration
require("nvim-autopairs").setup({
  check_ts = true,                        -- Use treesitter to check for pairs
  ts_config = {
    lua = {'string', 'source', 'comment'},
    vim = {'string', 'comment'},
    vimdoc = {'string', 'comment'},
    javascript = {'string', 'template_string', 'comment'},
    typescript = {'string', 'template_string', 'comment'},
    python = {'string', 'comment'},
    html = {'string', 'comment'},
    css = {'string', 'comment'},
    json = {'string'},                    -- JSON doesn't have comments
    markdown = {'string', 'comment'},
    bash = {'string', 'comment'},
    java = {'string', 'comment'},
    rust = {'string', 'comment'},
    go = {'string', 'comment'},
    c = {'string', 'comment'},
    cpp = {'string', 'comment'},
    asm = {'string', 'comment'},
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  disable_in_macro = true,                -- Disable when recording or executing a macro
  disable_in_visualblock = false,         -- Disable when in visual block mode
  disable_in_replace_mode = true,
  ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
  enable_moveright = true,
  enable_afterquote = true,               -- Add bracket pairs after quote
  enable_check_bracket_line = true,       -- Check bracket in same line
  enable_bracket_in_quote = true,
  enable_abbr = false,                    -- Trigger abbreviation
  break_undo = true,                      -- Switch for basic rule break undo sequence
  check_comma = true,
  map_cr = true,
  map_bs = true,                          -- Map the <BS> key
  map_c_h = false,                        -- Map the <C-h> key to delete a pair
  map_c_w = false,                        -- Map <C-w> to delete a pair if possible
})