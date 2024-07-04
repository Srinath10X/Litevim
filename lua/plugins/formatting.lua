return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier", "prettierd" },
				typescript = { "prettier", "prettierd" },
				javascriptreact = { "prettier", "prettierd" },
				typescriptreact = { "prettier", "prettierd" },
				svelte = { "prettier", "prettierd" },
				css = { "prettier", "prettierd" },
				html = { "prettier", "prettierd" },
				nix = { "prettier", "prettierd" },
				json = { "prettier", "prettierd" },
				yaml = { "prettier", "prettierd" },
				markdown = { "prettier", "prettierd" },
				graphql = { "prettier", "prettierd" },
				lua = { "stylua" },
				python = { "isort", "black" },
				c = { "clangd" },
				rust = { "rustfmt" },
				sh = { "shfmt" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
