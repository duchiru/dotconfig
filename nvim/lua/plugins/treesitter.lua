return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "VeryLazy",
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			autotage = { enable = true },
			ensure_installed = {
				"python",
				"javascript",
				"typescript",
				"html",
				"css",
				"jsx",
				"tsx",
				"lua",
			},
		},
	},
}
