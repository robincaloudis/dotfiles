-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  actions = {
    open_file = {
      resize_window=false,
    },
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
	custom = {"/.gitignore_global"},
	exclude = {"/.gitignore"},
    git_ignored = false,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
}
})

