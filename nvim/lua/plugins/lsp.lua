return {
	{
		"mason-org/mason-lspconfig.nvim",
		event = "VeryLazy",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				-- Add more language servers later
			},
			-- Automatically configure LSP servers with nvim-cmp capabilities
			handlers = {
				-- Default handler for all servers
				function(server_name)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,

				-- Custom configuration for lua_ls
				["lua_ls"] = function()
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig").lua_ls.setup({
						capabilities = capabilities,
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
								workspace = {
									library = vim.api.nvim_get_runtime_file("", true),
									checkThirdParty = false,
								},
								telemetry = {
									enable = false,
								},
							},
						},
					})
				end,
			},
		},
	},
}
