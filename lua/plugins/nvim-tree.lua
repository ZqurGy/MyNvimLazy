-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 可选开启24位颜色
vim.opt.termguicolors = true

-- 默认设置
require("nvim-tree").setup()

--[[

:NvimTreeToggle Open or close the tree. Takes an optional path argument.

:NvimTreeFocus Open the tree if it is closed, and then focus on the tree.

:NvimTreeFindFile Move the cursor in the tree for the current buffer, opening folders if needed.

:NvimTreeCollapse Collapses the nvim-tree recursively.

Help Open the tree: :NvimTreeOpen

--]]--




--[[
-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
]]--
