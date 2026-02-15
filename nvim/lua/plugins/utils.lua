return {
	-- File name and content searching
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		end,
	},

	-- Better symbol rename
	{
		"smjonas/inc-rename.nvim",
		config = function(_, opts)
			local inc_rename = require("inc_rename")
			inc_rename.setup(opts)

			vim.keymap.set("n", "<leader>r", function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end, { desc = "Rename symbol under cursor", expr = true })
		end,
	},

	-- Key bindings hinting
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			deplay = 0,
		},
	},
}
