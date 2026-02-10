return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			local ignore_filetypes = { "markdown" }
			if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
				return
			end
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end
			local bufname = vim.api.nvim_buf_get_name(bufnr)
			if bufname:match("/node_modules/") then
				return
			end
			return { timeout_ms = 700, lsp_format = "fallback" }
		end,
		formatters_by_ft = {
			javascript = { "prettier", "prettierd" },
			typescript = { "prettier", "prettierd" },
			javascriptreact = { "prettier", "prettierd" },
			typescriptreact = { "prettier", "prettierd" },
			svelte = { "prettier", "prettierd" },
			css = { "prettier", "prettierd" },
			html = { "prettier", "prettierd" },
			nix = { "nixpkgs-fmt", "prettierd" },
			json = { "prettier", "prettierd" },
			yaml = { "prettier", "prettierd" },
			markdown = { "prettier", "prettierd" },
			graphql = { "prettier", "prettierd" },
			lua = { "stylua" },
			python = { "isort", "black" },
			c = { "clang_format", "clangd" },
			cpp = { "clang_format", "clangd" },
			rust = { "rustfmt" },
			sh = { "shfmt" },
			asm = { "asmfmt" },
			dart = { "dartls", "dcm", "ast_grep" },
		},
	},
}
