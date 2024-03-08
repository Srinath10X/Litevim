-- lsp config
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua-language-server",
					"html",
					"cssls",
					"tsserver",
					"nextls",
					"prettier",
				},
			})
		end,
	},
}
