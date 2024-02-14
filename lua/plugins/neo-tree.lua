
return {
    "nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
    require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          position = "right",
          width = 27,
        },
    }),
    keys = {
        {
            '<Leader>e',
            function()
                require('neo-tree.command').execute({
                    toggle = true,
                    source = 'filesystem',
                    position = 'right',
                })
            end,
            desc = '[E]xplorer to the right (root dir)',
        },
    },
}
