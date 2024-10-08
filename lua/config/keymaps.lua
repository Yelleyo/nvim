-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- bind for :q, :w and :s
vim.keymap.set('n', '<leader>qq', ':q<CR>', {desc = "Quit", noremap = true, silent = true})
vim.keymap.set('n', '<leader>ww', ':w<CR>', {desc = "Write", noremap = true, silent = true})
vim.keymap.set('n', '<leader>wo', ':so<CR>', {desc = "Source out", noremap = true, silent = true})

-- Move selected lines down & up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- Append line below to current line, and charet stays n place
vim.keymap.set("n", "J", "mzJ`z")

-- Moves half screen down/up and keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- shows search terms result always in the middle when going to next
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "x", '"_x', {desc = "Delete to the void", noremap = true})

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

-- replace all instances of the word you are on!!
vim.keymap.set("n", "<leader>o", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace all same" })

-- Moving between windows / honnestly Ctrl hjkl is also fine
vim.keymap.set("n", "<Leader>wh", "<C-w>h", { desc = "Window left", noremap = true })
vim.keymap.set("n", "<Leader>wl", "<C-w>l", { desc = "Window right", noremap = true })
vim.keymap.set("n", "<Leader>wk", "<C-w>k", { desc = "Window up", noremap = true })
vim.keymap.set("n", "<Leader>ws", "<C-w>v", { desc = "Split window vertically", noremap = true })

vim.keymap.set('n', '<leader>wu', vim.cmd.UndotreeToggle, {desc = "Toggle UndoTree", noremap = true })

-- D0 things with the mouse and tab
vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

-- Vertical split
vim.keymap.set('n', '<Leader>v', vim.cmd.vsplit, { silent = true })

-- Keymaps for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "[F]ind [F]iles", noremap = true})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "[F]ind [G]rep", noremap = true})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "[F]ind [B]uffers", noremap = true})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "[F]ind [F]iles", noremap = true})
