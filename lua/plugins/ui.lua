local M = {
	-- catppuccin colorscheme
	catppuccin = {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	-- Gitsigns
	gitsigns = {
		"lewis6991/gitsigns.nvim",
		event = { "BufNewFile", "BufReadPre" },
		opts = {},
	},

	-- IndentBlankline
	indent_blankline = {
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = { "BufNewFile", "BufReadPre" },
		opts = {},
	},

	-- NvimTree
	nvim_tree = {
		"nvim-tree/nvim-tree.lua",
		config = function()
			-- disable netrw
			-- vim.g.loaded_netrw = 1
			-- vim.g.loaded_netrwPlugin = 1
			-- setup function
			require("nvim-tree").setup({
				view = {
					side = "left", -- You can set this value to right
				},
				renderer = {
					add_trailing = false,
					group_empty = false,
					highlight_git = false,
					full_name = false,
					highlight_opened_files = "none",
					root_folder_label = ":t",
					indent_width = 2,
					indent_markers = {
						enable = false,
						inline_arrows = true,
						icons = {
							corner = "└",
							edge = "│",
							item = "│",
							none = " ",
						},
					},
					icons = {
						glyphs = {
							folder = {
								-- arrow_closed = " ",
								-- arrow_open = " ",
								default = "",
								-- open = "",
								empty = "",
								empty_open = "",
							},
						},
					},
				},
			})
		end,
	},

	-- Neotree
	neo_tree = {
		"nvim-neo-tree/neo-tree.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		cmd = "Neotree",
		keys = {
			{ "<c-n>", ":Neotree reveal<CR>", { desc = "NeoTree reveal" } },
		},
		opts = {
			default_component_configs = {
				indent = {
					with_markers = true,
					indent_marker = "│",
					last_indent_marker = "╰",
					indent_size = 2,
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_hidden = false, -- only works on Windows for hidden files/directories
				},
				window = {
					width = 30,
					mappings = {
						["<c-n>"] = "close_window",
					},
				},
			},
		},
	},

	-- Bufferline
	bufferline = {
		"akinsho/bufferline.nvim",
		event = { "BufNewFile", "BufReadPre" },
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				indicator = { style = "icon", icon = "" },
				buffer_close_icon = "",
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				always_show_bufferline = false,
				offsets = {
					{ filetype = "neo-tree", text = " 󰉋  Explorer", text_align = "center" },
				},
				max_name_length = 30,
				max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
				tab_size = 20,
			},
		},
	},

	-- Lualine
	lualine = {
		{
			-- Set lualine as statusline
			"nvim-lualine/lualine.nvim",
			event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
			-- See `:help lualine.txt`
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
			config = function()
				local diagnostics = {
					"diagnostics",
					sections = { "error", "warn" },
					colored = true, -- Displays diagnostics status in color if set to true.
					always_visible = true, -- Show diagnostics even if there are none.
				}
				require("lualine").setup({
					options = {
						icons_enabled = true,
						theme = "catppuccin",
						disabled_filetypes = { "alpha", "lazy", "NvimTree" },
						component_separators = { left = "", right = "" },
						section_separators = { left = "", right = "" },
					},
					sections = {
						lualine_a = {
							{ icon = "", "mode" },
						},

						lualine_b = {
							{ "filename", color = { fg = "#bcc0cc" } },
						},

						lualine_c = { "branch" },
						lualine_x = { diagnostics },
						lualine_y = { { "filetype", color = { fg = "#c6c6c6" } } },
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
	},

	lspsaga = {
		"glepnir/lspsaga.nvim",

		branch = "main",
		event = { "BufNewFile", "BufReadPre" },
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter" },
		},
		opts = {
			scroll_preview = {
				scroll_down = "<C-f>",
				scroll_up = "<C-b>",
			},
			definition = {
				edit = "<CR>",
			},
			ui = {
				colors = {
					normal_bg = "#022746",
				},
			},
		},
	}, -- enhanced lsp uis

	treesitter = {
		"nvim-treesitter/nvim-treesitter",
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
				-- auto install above language parsers
				auto_install = true,
			})
		end,
	},
}

return {
	M.catppuccin,
	M.lualine,
	M.bufferline,
	M.neo_tree,
	M.indent_blankline,
	M.gitsigns,
	M.lspsaga,
	M.treesitter,
}
