return {
	-- Global color scheme
	{
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		opts = {
			style = "darker",
		},
		config = function(_, opts)
			local onedark = require("onedark")
			onedark.setup(opts)
			onedark.load()
		end,
	},
	
	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		opts = {
			theme = "auto"
		}
	},

	-- Side file tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		opts = {
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 32,
			},
			renderer = {
				group_empty = true,
			},
		},
		config = function(_, opts)
			require("nvim-tree").setup(opts)

			local api = require("nvim-tree.api")
			vim.keymap.set("n", "<leader>to", api.tree.open, { desc = "Open/Focus file tree" })
		end,
	}
}
