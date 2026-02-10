local M = {
	lsp_base = {
		"neovim/nvim-lspconfig",
		cmd = "Mason",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_pending = " ",
							package_installed = "󰄳 ",
							package_uninstalled = " ",
						},
					},
				}
			},
			{ "williamboman/mason-lspconfig.nvim", opts = {} },
		},
	},

	blink_cmp = {
		"saghen/blink.cmp",
		event = "InsertEnter",
		opts = {
			keymap = {
				preset = "enter",
				["<C-k>"] = { "select_prev", "fallback_to_mappings" },
				["<C-j>"] = { "select_next", "fallback_to_mappings" },
			},

			completion = {
				menu = {
					draw = {
						columns = { { "label", "kind_icon", "kind", gap = 1 } },
					},
				},

				fuzzy = { implementation = "lua" },
			},

			dependencies = { "rafamadriz/friendly-snippets" },
		},
	},

	lspsaga = {
		"nvimdev/lspsaga.nvim",
		opts = {},
		event = "LspAttach",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
};

return { M.lsp_base, M.blink_cmp, M.lspsaga };
