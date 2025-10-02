-- Harpoon 2 Configuration
local harpoon = require("harpoon")

-- Basic setup
harpoon:setup({
  settings = {
    save_on_toggle = false,
    sync_on_ui_close = false,
    key = function()
      return vim.loop.cwd()
    end,
  }
})

-- Telescope integration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

-- Export the telescope function for keymaps
_G.harpoon_telescope = function()
    toggle_telescope(harpoon:list())
end