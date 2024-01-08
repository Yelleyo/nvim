
return {
    "nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
    require("neo-tree").setup({
        close_if_last_window = false,
        window = {
          position = "right",
          width = 27,
        },
    })
}
