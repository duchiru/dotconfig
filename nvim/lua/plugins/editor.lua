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

	-- Better symbol rename
	{
		"smjonas/inc-rename.nvim",
		event = "VeryLazy",
		config = function(_, opts)
			local inc_rename = require("inc_rename")
			inc_rename.setup(opts)

			vim.keymap.set("n", "<leader>r", function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end, { desc = "Rename symbol under cursor", expr = true })
		end,
	},

	-- Color visualizer
	{
		"brenoprata10/nvim-highlight-colors",
		event = "VeryLazy",
	},
}
