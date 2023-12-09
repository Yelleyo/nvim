return {
    "ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		local harpoon = require("harpoon")
		---@diagnostic disable-next-line: missing-parameter
		harpoon:setup()
		local function map(lhs, rhs, opts)
                vim.keymap.set("n", lhs, rhs, opts or {})
		end
		map("<leader>a", function() harpoon:list():append() end, {desc = "Add to Harpoon"})
		map("<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Harpoon list"})
		map("<leader>hj", function() harpoon:list():select(1) end, {desc = "Harpoon 1"})
		map("<leader>hk", function() harpoon:list():select(2) end, {desc = "Harpoon 2"})
		map("<leader>hl", function() harpoon:list():select(3) end, {desc = "Harpoon 3"})
		map("<leader>h;", function() harpoon:list():select(4) end, {desc = "Harpoon 4"})
	end
}
