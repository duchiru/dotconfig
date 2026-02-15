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
}
