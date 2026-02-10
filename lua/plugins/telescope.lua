return {
	"nvim-telescope/telescope.nvim",
	keys = {
		{ "<leader>ff", function() require("telescope.builtin").find_files() end,  desc = "Find files" },
		{ "<leader>fs", function() require("telescope.builtin").live_grep() end,   desc = "Live grep" },
		{ "<leader>fc", function() require("telescope.builtin").grep_string() end, desc = "Grep string" },
		{ "<leader>fb", function() require("telescope.builtin").buffers() end,     desc = "Buffers" },
		{ "<leader>fh", function() require("telescope.builtin").help_tags() end,   desc = "Help" },
		{ "<leader>th", function() require("telescope.builtin").colorscheme() end, desc = "Colorschemes" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					width = 0.75,
					preview_cutoff = 120,
					prompt_position = "top",
				},
				entry_prefix = "  ",
				prompt_prefix = "  ",
				selection_caret = "  ",
				layout_strategy = "horizontal",
				sorting_strategy = "ascending",
				mappings = {
					i = {
						["<esc>"] = require("telescope.actions").close,
						["<C-j>"] = require("telescope.actions").move_selection_next,
						["<C-k>"] = require("telescope.actions").move_selection_previous,
						["<CR>"] = require("telescope.actions").select_default + require("telescope.actions").center,
					},
					n = {
						["<esc>"] = require("telescope.actions").close,
						["<C-j>"] = require("telescope.actions").move_selection_next,
						["<C-k>"] = require("telescope.actions").move_selection_previous,
						["<CR>"] = require("telescope.actions").select_default + require("telescope.actions").center,
					},
				},
			},
		})
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
}
