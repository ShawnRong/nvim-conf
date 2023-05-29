-- Load Lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup({
  -- Colorscheme
  -- { "RRethy/nvim-base16", lazy = true, },
  { "folke/tokyonight.nvim", lazy = true, },
  { 
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  -- Status line
  { 
    "nvim-lualine/lualine.nvim", 
    lazy = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    } 
  },
  -- File Tree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  },
  -- Session Save
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
  },
  -- Telescope
  -- lazy load with command
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', cmd = "Telescope",
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- LSP
  -- Mason
  {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  {
    "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
    event = "VeryLazy",
  },
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
  },
  -- Code Complete
  {
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
      "onsails/lspkind-nvim",
    },
    config = function()
      local lspkind = require('lspkind')
      require("cmp").setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = 'symbol', -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function (entry, vim_item)
              return vim_item
            end
          })
        }
      })
    end,
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
  },
  -- Code Format
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
  },
  -- Extra
  { "numToStr/Comment.nvim", opts = {} },
  { "windwp/nvim-autopairs", opts = {} }, -- 自动补全括号
  { "lewis6991/gitsigns.nvim", opts = {} }, -- 左则git提示
  -- { "akinsho/bufferline.nvim", opts = {} }, -- buffer分割线
  { "folke/neodev.nvim", opts = {} },
  { 
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  }
})
