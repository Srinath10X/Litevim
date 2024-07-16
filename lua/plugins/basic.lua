-- This file contains all the basic plugins such as
-- Autopairs,AcceleratedJk,Comment,ToggleTerm,Outline

local Basic = {
	-- Autopairs
	autopairs = {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		dependencies = { "hrsh7th/nvim-cmp" },
		config = function()
			require("nvim-autopairs").setup({})
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},

	-- Comment
	comment = {
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},

	-- ToggleTerm
	toggle_term = {
		"akinsho/toggleterm.nvim",
		opts = {
			open_mapping = [[<M-t>]],
			direction = "float",
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		},
	},

	-- Outline
	outline = {
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		keys = { -- Example mapping to toggle outline
			{ "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
		},
		opts = {},
	},
}

return {
	Basic.autopairs,
	Basic.comment,
	Basic.toggle_term,
	Basic.outline,
}
