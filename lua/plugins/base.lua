local M = {
	autopairs = {
		"windwp/nvim-autopairs",
		opts = {},
		event = "InsertEnter",
	},

	toggle_term = {
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		opts = {
			direction = "float",
			float_opts = { border = "curved" },
		},
		keys = { { "<c-t>", "<cmd>ToggleTerm dir=.<cr>" } },
	},

	gitsigns = {
		"lewis6991/gitsigns.nvim",
		opts = {},
		event = { "BufNewFile", "BufReadPre" },
	},

	color_highlighter = {
		"brenoprata10/nvim-highlight-colors",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			render = 'virtual',
			virtual_symbol = '󰝤',
		},
	},

	vim_tmux_navigator = {
		"christoomey/vim-tmux-navigator",
		keys = {
			{ "<c-k>", "<cmd><c-u>TmuxNavigateUp<cr>" },
			{ "<c-j>", "<cmd><c-u>TmuxNavigateDown<cr>" },
			{ "<c-h>", "<cmd><c-u>TmuxNavigateLeft<cr>" },
			{ "<c-l>", "<cmd><c-u>TmuxNavigateRight<cr>" },
		},
	},
};

return {
	M.gitsigns,
	M.autopairs,
	M.toggle_term,
	M.color_highlighter,
	M.vim_tmux_navigator
}
