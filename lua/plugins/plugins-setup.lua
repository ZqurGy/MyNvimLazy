-- https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- 主题插件 https://github.com/folke/tokyonight.nvim 
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- 状态栏 https://github.com/nvim-lualine/lualine.nvim
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- 同时也是文档树的图标
  },
  -- 文档树 https://github.com/nvim-tree/nvim-tree.lua
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    -- dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  -- 用ctl-hjkl来定位窗口 https://github.com/christoomey/vim-tmux-navigator
  "christoomey/vim-tmux-navigator",
  -- 语法高亮 https://github.com/nvim-treesitter/nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
  },
  -- 配合treesitter，不同括号颜色区分
  "p00f/nvim-ts-rainbow",
  {
    -- 用于管理外部编辑器的插件 https://github.com/williamboman/mason.nvim
    "williamboman/mason.nvim",
    -- 这个相当于mason.nvim和lspconfig的桥梁 https://github.com/williamboman/mason-lspconfig.nvim
    "williamboman/mason-lspconfig.nvim", 
    -- 仅仅是lsp的集合
    "neovim/nvim-lspconfig",
  },
  -- 自动补全
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "hrsh7th/cmp-path", -- 文件路径

  "numToStr/Comment.nvim", -- gcc和gc注释
  "windwp/nvim-autopairs", -- 自动补全括号

  "akinsho/bufferline.nvim", -- buffer分割线
  "lewis6991/gitsigns.nvim", -- 左则git提示

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',-- 文件检索
    dependencies = { {'nvim-lua/plenary.nvim'} }, -- requires要改为dependencies
  },

}
local opts = {} -- 注意要定义这个变量
require("lazy").setup(plugins, opts)
