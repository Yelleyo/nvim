-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")

vim.o.guifont = "Iosevka NF:h14"

vim.g.neovide_transparency = 0.95
vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
