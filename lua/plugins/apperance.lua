local M = {
	tokyonight = {
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				styles = {
					comments = { italic = false },
				},
			})

			vim.cmd.colorscheme("tokyonight-night")
		end,
	},

	noice = {
		"folke/noice.nvim",
		opts = {},
		event = "VimEnter",
		dependencies = { "MunifTanjim/nui.nvim" },
	},

	bufferline = {
		"akinsho/bufferline.nvim",
		opts = {
			options = {
				offsets = {
					{ filetype = "neo-tree", text = " 󰉋  Explorer", text_align = "center" }
				},
			}
		},
		version = "*",
		event = { "BufNewFile", "BufReadPre" },
	},

	indent = {
		"lukas-reineke/indent-blankline.nvim",
		opts = {},
		main = "ibl",
		event = { "BufReadPost", "BufNewFile" },
	},

	lualine = {
		"nvim-lualine/lualine.nvim",
		event = "BufWinEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local diagnostics = {
				"diagnostics",
				sections = { "error", "warn" },
				colored = true,
				always_visible = true,
			}

			local colors = {
				blue = "#80a0ff",
				cyan = "#79dac8",
				black = "#1E1E2E",
				white = "#c6c6c6",
				red = "#ff5189",
				violet = "#d183e8",
				grey = "#303030",
				yellow = "#f5bf42",
			}

			local bubbles_theme = {
				normal = {
					a = { fg = colors.black, bg = colors.blue, gui = "bold" },
					b = { fg = colors.white, bg = colors.grey, gui = "bold" },
					c = { fg = colors.white, bg = colors.black, gui = "bold" },
				},

				insert = { a = { fg = colors.black, bg = colors.violet, gui = "bold" } },
				visual = { a = { fg = colors.black, bg = colors.red, gui = "bold" } },
				replace = { a = { fg = colors.black, bg = colors.blue, gui = "bold" } },
				command = { a = { fg = colors.black, bg = colors.yellow, gui = "bold" } },

				inactive = {
					a = { fg = colors.white, bg = colors.black, gui = "bold" },
					b = { fg = colors.white, bg = colors.black, gui = "bold" },
					c = { fg = colors.black, bg = colors.black, gui = "bold" },
				},
			}

			require("lualine").setup({
				options = {
					theme = bubbles_theme,
					disabled_filetypes = { "alpha", "neo-tree" },
				},

				sections = {
					lualine_a = {
						{
							icon = "",
							"mode",
							right_padding = 1,
						},
					},
					lualine_b = { "filename" },
					lualine_c = { "branch" },
					lualine_x = { diagnostics },
					lualine_y = {
						{ "filetype" },
					},
					lualine_z = {
						{
							"progress",
							icon = "󰦨",
						},
					},
				},
				inactive_sections = {
					lualine_a = { "filename" },
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
				},
				tabline = {},
				extensions = {},
			})
		end,
	},

	neo_tree = {
		"nvim-neo-tree/neo-tree.nvim",
		cmd = "Neotree",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = { { "<leader>e", ":Neotree toggle reveal<CR>", silent = true } },
		opts = {
			default_component_configs = {
				indent = {
					indent_size = 2,
					indent_marker = "│",
					last_indent_marker = "╰",
				},
			},
			filesystem = {
				group_empty_dirs = false,
				filtered_items = { hide_dotfiles = false },
				window = {
					width = 30,
					mappings = { ["<leader>e"] = "close_window" },
				},
			},
		},
	},

	treesitter = {
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("nvim-treesitter.configs").setup({
				-- enable syntax highlighting
				highlight = {
					enable = true,
				},
				-- enable indentation
				indent = { enable = true },
				-- enable autotagging (w/ nvim-ts-autotag plugin)
				autotag = { enable = true },
				-- ensure these language parsers are installed
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"svelte",
					"graphql",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
				},
				auto_install = true,
			})
		end,
	},
};

return { M.lualine, M.tokyonight, M.noice, M.bufferline, M.indent, M.neo_tree, M.treesitter };
