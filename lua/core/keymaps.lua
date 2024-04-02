-- 快捷键设置

-- 主键快捷键
vim.g.mapleader = " "

local keymap = vim.keymap

-- -------- 插入模式--------- -- 
-- 模式insert下，jk --> ESC
keymap.set("i", "jk", "<ESC>")

-- -------- 视觉模式--------- -- 
-- 单行或者多行移动 <CR> --> 回车
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -------- 正常模式--------- -- 
-- 窗口 <leader> --> 主键 <C-w> --> Ctrl+w
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- -------- 插件 --------- -- 
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 切换bufferline
keymap.set("n", "L", ":bnext<CR>")
keymap.set("n", "H", ":bprevious<CR>")
