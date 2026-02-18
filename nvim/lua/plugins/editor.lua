return {
	-- Show git changes in the editor
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		opts = {
			current_line_blame = true,
		},
		config = function(_, opts)
			local gitsigns = require("gitsigns")
			gitsigns.setup(opts)

			vim.keymap.set("n", "<leader>gh", gitsigns.preview_hunk)
		end,
	},

	-- Simplifying using git commands in neovim
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
	},
}
