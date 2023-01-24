vim.cmd[[colorscheme tokyonight]]

require("tokyonight").setup({
  style = "night"
})

if vim.g.neovide then
  vim.opt.guifont = { "JetBrainsMono_Nerd_Font_Mono", ":h15" }
end
