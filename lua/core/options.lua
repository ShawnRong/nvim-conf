local set = vim.opt

-- Line Number
set.number = true
set.relativenumber = true

-- Indent
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.autoindent = true

-- Clipbaard
-- Copy to system clipboard
set.clipboard = "unnamed"
-- Copy with highlight
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})


-- Warp
set.wrap = false

-- Cursor
set.cursorline = true

-- Mouse
set.mouse:append("a")

-- Search
set.ignorecase = true
set.smartcase = true

-- Layout
set.termguicolors = true
set.signcolumn = "yes"