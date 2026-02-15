return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			autotage = { enable = true },
			ensure_installed = {
				"python",
				"javascript",
				"typescript",
				"jsx",
				"tsx",
				"lua",
			},
		},
	},
}
