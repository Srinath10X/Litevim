-- lsp config
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"html",
					"cssls",
					"tsserver",
				},
			})
		end,
	},
}
