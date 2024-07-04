-- User plugins here

local M = {
	plugins = {
		{ "mattn/emmet-vim", "szw/vim-maximizer" },
		{
			"uga-rosa/ccc.nvim",
			event = { "BufReadPre", "BufNewFile" },
			opts = {
				highlighter = {
					auto_enable = true,
					lsp = true,
				},
			},
		},
		{
			"iamcco/markdown-preview.nvim",
			cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
			-- If you have yarn installed just change the build command
			build = "cd app && npm install",
			lazy = false,
			init = function()
				vim.g.mkdp_filetypes = { "markdown" }
			end,
			ft = { "markdown" },
		},
		{
			"Exafunction/codeium.vim",
			config = function()
				-- Change '<C-g>' here to any keycode you like.
				vim.keymap.set("i", "<C-g>", function()
					return vim.fn["codeium#Accept"]()
				end, { expr = true, silent = true })
				vim.keymap.set("i", "<c-;>", function()
					return vim.fn["codeium#CycleCompletions"](1)
				end, { expr = true, silent = true })
				vim.keymap.set("i", "<c-,>", function()
					return vim.fn["codeium#CycleCompletions"](-1)
				end, { expr = true, silent = true })
				vim.keymap.set("i", "<c-x>", function()
					return vim.fn["codeium#Clear"]()
				end, { expr = true, silent = true })
			end,
		},
	},
}

return M.plugins
