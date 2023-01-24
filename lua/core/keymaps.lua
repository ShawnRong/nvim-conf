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

-- -- Switch buffer
-- keymap.set("n", "<C-L>", ":bnext<CR>")
-- keymap.set("n", "<C-H>", ":bprevious<CR>")

-- Shortcut for faster save and quit
keymap.set("n", "<leader>w", "<cmd>update<cr>", { silent = true, desc = "save buffer" })

-- Saves the file if modified and quit
keymap.set("n", "<leader>q", "<cmd>x<cr>", { silent = true, desc = "quit current window" })

-- Quit all opened buffers
keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { silent = true, desc = "quit nvim" })


-- Neovide copy/paste
if vim.g.neovide then
  local kepmalOpts = {
    silent = true,
    noremap = true
  }
  keymap.set({"n", "v"}, "<D-v>", "\"*p", kepmalOpts)
  keymap.set({"n", "v"}, "<D-c>", "\"+y", kepmalOpts)
  keymap.set({"n", "v"}, "<D-x>", "\"*x", kepmalOpts)
end

---- Plugin ----
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Bufferline
keymap.set('n', '<LEADER>1', '<cmd>lua require("bufferline").go_to_buffer(1, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>2', '<cmd>lua require("bufferline").go_to_buffer(2, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>3', '<cmd>lua require("bufferline").go_to_buffer(3, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>4', '<cmd>lua require("bufferline").go_to_buffer(4, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>5', '<cmd>lua require("bufferline").go_to_buffer(5, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>6', '<cmd>lua require("bufferline").go_to_buffer(6, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>7', '<cmd>lua require("bufferline").go_to_buffer(7, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>8', '<cmd>lua require("bufferline").go_to_buffer(8, true)<cr>', {silent = true})
keymap.set('n', '<LEADER>9', '<cmd>lua require("bufferline").go_to_buffer(9, true)<cr>', {silent = true})

-- Telescope
keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, {desc ='[S]earch [B]uffers'})
keymap.set('n', '<leader>so', require('telescope.builtin').oldfiles, {desc ='[S]earch [O]ldfiles'})
