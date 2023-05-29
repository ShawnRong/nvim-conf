require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",  -- lua
    "intelephense", -- php
    "psalm", -- php static analyzer
    -- "gopls", -- go
    "yamlls",
    "docker_compose_language_service"
  },
})

require("neodev").setup({})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
}

lspconfig.intelephense.setup {}
lspconfig.psalm.setup {}
lspconfig.yamlls.setup {}
lspconfig.docker_compose_language_service.setup {}