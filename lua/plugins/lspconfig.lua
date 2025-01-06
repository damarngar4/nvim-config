return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},

	{
		"neovim/nvim-lspconfig",

		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							checkThirdParty = false,
							telemetry = { enable = false },
							library = {
								"${3rd}/love2d/library",
							},
						},
					},
				},
				capabilities = capabilities,
			})

			lspconfig.gdscript.setup({
				capabilities = capabilities,
			})
		end,
	},
}
