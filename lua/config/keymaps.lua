-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
vim.g.mapleader = " "
-- vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")


-- Move selected lines down & up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- Append line below to current line, and charet stays in place
vim.keymap.set("n", "J", "mzJ`z")

-- Moves half screen down/up and keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- shows search terms result always in the middle when going to next
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- instead of repalcing the yanked text, by the one pasted over. It keeps it.
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "paste and keep in buffer" })

-- next greatest remap ever : asbjornHaland
-- yanking/deleting to the system buffer -> windows
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to OS buffer" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to OS buffer" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete to OS buffer" })
vim.keymap.set({ "n", "v" }, "<leader>p", [["*p]], { desc = "paste after _ from OS buffer" })
vim.keymap.set("n", "<leader>P", [["*P]], { desc = "paste before _ from OS buffer" })
vim.keymap.set("n", "x", '"_x', {desc = "Delete to the void"})

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace all instances of the word you are on!!
vim.keymap.set("n", "<leader>o", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace all same" })
-- Moving between windows
vim.api.nvim_set_keymap("n", "<Leader>wh", "<C-w>h", { desc = "Window left", noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>wl", "<C-w>l", { desc = "Window right", noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>wj", "<C-w>j", { desc = "Window down", noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>wk", "<C-w>k", { desc = "Window up", noremap = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

vim.keymap.set('n', '<leader>wt', vim.cmd.UndotreeToggle)

