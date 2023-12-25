-- Which key

return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
		config = function()
			local wk = require("which-key")
			local mapings = {
				q = { ":q<cr>", "Quit" },
				w = { ":w<cr>", "Save" },
				Q = { ":wq!<cr>", "Quit" },
			}
			local opts = {
				prefix = "<leader>",
			}

			wk.register(mapings, opts)
		end,
	},
}
