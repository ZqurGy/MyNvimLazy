-- nvim核心设置
---- 基础操作选项的bootloader
require("core.options")

---- 快捷键配置的bootloader
require("core.keymaps")


-- 插件管理
---- lazy.nvim插件管理器的bootloader
require("plugins.plugins-setup")

---- 主题的bootloader
require("plugins.colorscheme")

---- 状态栏的bootloader 
require("plugins.lualine")

---- nvim-tree的bootloader 
require("plugins.nvim-tree")

---- vim-tmux-navigator的bootloader 
require("plugins.tmux-navigator")

-- 语法高亮的bootloader 
require("plugins.treesitter")

-- lsp语法提醒的bootloader 
require("plugins.lsp")

-- 自动补全的bootloader 
require("plugins.cmp")

-- gcc注释和gc注释的的bootloader 
require("plugins.comment")

-- 括号自动补全的bootloader 
require("plugins.autopairs")

-- 缓冲行的bootloader 
require("plugins.bufferline")

-- git标签栏的bootloader 
require("plugins.gitsigns")

-- 搜索文件的bootloader 
require("plugins.telescope")
