-- Main Key
vim.g.mapleader = " "


local keymap = vim.keymap

--------- Insert Mode --------
keymap.set("i", "jk", "<ESC>")

--------- Visual Mode --------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

---- Normal Mode --------
-- Window
keymap.set("n", "<leader>sv", "<C-w>v") 
keymap.set("n", "<leader>sh", "<C-w>s")


-- No Highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Switch buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")



---- Plugin ----
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Bufferline
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")
