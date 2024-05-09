-- 语法提示配置
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
  },

  -- pip = {
  --   upgrade_pip = true,
  -- }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "clangd",
    "cmake",
    "pylsp",
    -- "pyright",
    -- "tsserver",
    -- "gopls",
    "html",
    -- "cssls",
  },
})

-- 让自动补全和lsp结合
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
-- 如果需要cmp 代码补全，lsp.xxx.setup 必须配置
require("lspconfig").clangd.setup {
  capabilities = capabilities,
}
