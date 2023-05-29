-- Leader map
vim.g.mapleader = " "

local keymap = vim.keymap
--------- Insert Mode --------
-- Exit Insert mode
keymap.set("i", "jk", "<ESC>")

--------- Visual Mode --------
-- keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- keymap.set("v", "K", ":m '<-2<CR>gv=gv")


---- Normal Mode --------
-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

keymap.set("n", "<leader><leader>", ":source $MYVIMRC<cr>", { noremap = true, desc = 'reload init.vim config'})

-- Jumplist
keymap.set("n", "<leader>o", "<C-o>", { desc = ''})
keymap.set("n", "<leader>i", "<C-i>", { desc = ''})


-- No Highlight
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = 'Disable Search Highlight'})


-- NVIM TREE
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = 'Toggle Nvim Tree'})

-- Telescope
local telescopeBuiltin = require('telescope.builtin')
keymap.set('n', '<leader>sf', telescopeBuiltin.find_files, { desc = '[S]earch [F]iles' })
keymap.set('n', '<leader>sr', telescopeBuiltin.resume, { desc = '[S]earch [R]esume' })
keymap.set('n', '<leader>sh', telescopeBuiltin.help_tags, { desc = '[S]earch [H]elp' })
keymap.set('n', '<leader>sw', telescopeBuiltin.grep_string, { desc = '[S]earch current [W]ord' })
keymap.set('n', '<leader>sg', telescopeBuiltin.live_grep, { desc = '[S]earch by [G]rep' })
keymap.set('n', '<leader>sd', telescopeBuiltin.diagnostics, { desc = '[S]earch [D]iagnostics' })
keymap.set('n', '<leader>sb', telescopeBuiltin.buffers, {desc ='[S]earch [B]uffers'})
keymap.set('n', '<leader>so', telescopeBuiltin.oldfiles, {desc ='[S]earch [O]ldfiles'})


-- LSP
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- keymap.set('n', '<space>e', vim.diagnostic.open_float)
-- keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- keymap.set('n', ']d', vim.diagnostic.goto_next)
-- keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
-- vim.api.nvim_create_autocmd('LspAttach', {
--   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
--   callback = function(ev)
--     -- Enable completion triggered by <c-x><c-o>
--     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

--     -- Buffer local mappings.
--     -- See `:help vim.lsp.*` for documentation on any of the below functions
--     local opts = { buffer = ev.buf }
--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
--     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
--     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
--     vim.keymap.set('n', '<space>wl', function()
--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, opts)
--     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
--     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
--     vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--     vim.keymap.set('n', '<space>f', function()
--       vim.lsp.buf.format { async = true }
--     end, opts)
--   end,
-- })
