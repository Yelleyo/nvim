-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Add any additional options hereby
vim.g.loaded_netrw = 1 -- Disables the netrw file explorer
vim.g.loaded_netrwPlugin = 1 -- Disables the netrwPlugin

-- Config the Default shell for the terminal:
vim.opt.shell = vim.fn.executable "pwsh" and "pwsh" or "powershell"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

vim.opt.termguicolors = true -- Enables true color support

vim.opt.clipboard = "unnamedplus" -- Allows use of the system clipboard
vim.opt.splitright = true -- Splits new windows to the right

-- line Number color in a delayed funtion
vim.defer_fn(function()
    vim.cmd[[highlight LineNr guifg=#4C566A]]
    vim.cmd[[highlight CursorLineNr guifg=#97B67C]]
end, 0)

vim.g.autoformat = false -- Disables autoformat
vim.opt.nu = true -- Enables line numbers
vim.opt.relativenumber = true -- Shows line numbers relative to the cursor

vim.opt.tabstop = 4 -- Sets the width of a tab to 4 spaces
vim.opt.softtabstop = 4 -- Sets the number of spaces a Tab counts for while performing editing operations
vim.opt.shiftwidth = 4 -- Sets the number of spaces used for indentation
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.smartindent = true -- Enables smart indentation

vim.opt.wrap = false -- Disables line wrapping

vim.opt.swapfile = false -- Disables swap file creation
vim.opt.backup = false -- Disables backup creation
local home_dir = os.getenv("HOME") or os.getenv("USERPROFILE")
vim.opt.undodir = home_dir .. "/.vim/undodir" -- Sets the directory for undo files
vim.opt.undofile = true -- Enables undo file usage

-- Options for the grep search
vim.opt.hlsearch = false -- Disables highlighting of search results
vim.opt.incsearch = true -- Enables incremental search
vim.opt.ignorecase = true -- Ignores case in search patterns

vim.opt.scrolloff = 8 -- Keeps 8 lines above and below the cursor when scrolling
vim.opt.signcolumn = "yes" -- Always shows the sign column
vim.opt.isfname:append("@-@") -- Appends @-@ to the list of characters that can be part of a file name

vim.opt.updatetime = 50 -- Sets the time of no activity before the swap file is written to disk

vim.opt.colorcolumn = "0" -- Disables color column

vim.opt.timeoutlen = 0 -- Sets the time to wait for a mapped sequence to complete
vim.opt.ttimeoutlen = 20 -- Sets the time to wait for a key code sequence to complete
vim.opt.numberwidth = 1 -- Sets the width of the number column to 1
