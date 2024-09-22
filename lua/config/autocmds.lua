-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd[[highlight LineNr guifg=#4C566A]] -- Color of the wind, and the line numbering
vim.cmd[[highlight CursorLineNr guifg=#97B67C]] -- Color of the current line - taken from the nordic theme: https://www.nordtheme.com/
vim.api.nvim_create_autocmd("VimEnter", {
    command = "TransparentEnable"
})
