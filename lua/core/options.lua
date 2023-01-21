local opt = vim.opt

-- Line Number
opt.number = true
opt.relativenumber = true

-- Indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Warp
opt.wrap = false

-- Cursor
opt.cursorline = true

-- Mouse
opt.mouse:append("a")

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Default Split Window
opt.splitright = true
opt.splitbelow = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Layout
opt.termguicolors = true
opt.signcolumn = "yes"


