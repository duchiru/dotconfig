return {
	-- Better UI for some Neovim components
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
				},
			},
			views = {
				cmdline_popup = {
        	border = {
          	style = "none",
          	padding = { 1, 2 },
        	},
        	filter_options = {},
        	win_options = {
         		winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
        	},
      	},
			},
			cmdline = {
				format = {
					input = { view = "cmdline_popup" },
				},
			},
			presets = {
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
			},
		},
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
}
