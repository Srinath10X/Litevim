local M = {
	-- vim-tmux navigator
	vim_tmux_navigator = {
		"christoomey/vim-tmux-navigator",
		event = "VimEnter",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
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
		cmd = { "ToggleTerm" },
		keys = {
			{ "<c-t>", "<cmd>ToggleTerm direction=float dir=.<cr>" },
		},
		opts = {
			direction = "float",
			shade_terminals = false,
			close_on_exit = true,
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

	-- Autopairs
	autopairs = {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
}

return {
	M.vim_tmux_navigator,
	M.comment,
	M.toggle_term,
	M.autopairs,
	M.markdown,
}
