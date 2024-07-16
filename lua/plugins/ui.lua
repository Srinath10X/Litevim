local Ui = {
	-- Colorscheme's
	colorschemes = {
		-- catppuccin colorscheme
		catppuccin = {
			"catppuccin/nvim",
			name = "catppuccin",
			priority = 1000,
			config = function()
				vim.cmd.colorscheme("catppuccin")
			end,
		},
	},

	-- Gitsigns
	gitsigns = {
		"lewis6991/gitsigns.nvim",
		opts = {},
	},

	-- IndentBlankline
	indent_blankline = {
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	-- NvimTree
	nvim_tree = {
		"nvim-tree/nvim-tree.lua",
		config = function()
			-- disable netrw
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
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
								-- empty_open = "",
							},
						},
					},
				},
			})
		end,
	},

	-- Bufferline
	bufferline = {
		"akinsho/bufferline.nvim",
		version = "*",
		event = { "BufNewFile", "BufReadPre" },
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
				offsets = { { filetype = "NvimTree", text = " 󰉋  Explorer", text_align = "center" } },
				max_name_length = 30,
				max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
				tab_size = 20,
			},
		},
	},

	-- Dressing
	dressing = {
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		config = function()
			require("dressing").setup({
				input = {
					enabled = true,
					default_prompt = "Input",
					trim_prompt = true,
					title_pos = "left",
					insert_only = true,
					start_in_insert = true,
					border = "rounded",
					relative = "cursor",
					prefer_width = 40,
					width = nil,
					max_width = { 140, 0.9 },
					min_width = { 20, 0.2 },
					buf_options = {},
					win_options = {
						wrap = false,
						list = true,
						listchars = "precedes:…,extends:…",
						sidescrolloff = 0,
					},
					mappings = {
						n = {
							["<Esc>"] = "Close",
							["<CR>"] = "Confirm",
						},
						i = {
							["<C-c>"] = "Close",
							["<CR>"] = "Confirm",
							["<Up>"] = "HistoryPrev",
							["<Down>"] = "HistoryNext",
						},
					},

					override = function(conf)
						return conf
					end,
					get_config = nil,
				},
				select = {
					enabled = true,
					backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },
					trim_prompt = true,
					telescope = nil,
					fzf = {
						window = {
							width = 0.5,
							height = 0.4,
						},
					},
					fzf_lua = {
						-- winopts = {
						--   height = 0.5,
						--   width = 0.5,
						-- },
					},
					nui = {
						position = "50%",
						size = nil,
						relative = "editor",
						border = {
							style = "rounded",
						},
						buf_options = {
							swapfile = false,
							filetype = "DressingSelect",
						},
						win_options = {
							winblend = 0,
						},
						max_width = 80,
						max_height = 40,
						min_width = 40,
						min_height = 10,
					},

					builtin = {
						show_numbers = true,
						border = "rounded",
						relative = "editor",

						buf_options = {},
						win_options = {
							cursorline = true,
							cursorlineopt = "both",
						},
						width = nil,
						max_width = { 140, 0.8 },
						min_width = { 40, 0.2 },
						height = nil,
						max_height = 0.9,
						min_height = { 10, 0.2 },

						mappings = {
							["<Esc>"] = "Close",
							["<C-c>"] = "Close",
							["<CR>"] = "Confirm",
						},
						override = function(conf)
							return conf
						end,
					},
					format_item_override = {},
					get_config = nil,
				},
			})
		end,
	},

	-- Lualine
	lualine = {
		-- Set lualine as statusline
		"nvim-lualine/lualine.nvim",
		-- See `:help lualine.txt`
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local diagnostics = {
				"diagnostics",
				sections = { "error", "warn" },
				colored = true,    -- Displays diagnostics status in color if set to true.
				always_visible = true, -- Show diagnostics even if there are none.
			}

			local colors = {
				blue = "#80a0ff",
				cyan = "#79dac8",
				black = "#1E1E2E", -- catppuccin
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
					c = { fg = colors.black, bg = colors.black, gui = "bold" },
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
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					-- component_separators = { left = "", right = "" },
					-- section_separators = { left = "", right = "" },
					disabled_filetypes = { "alpha" },
				},

				sections = {
					lualine_a = {
						{
							icon = "",
							"mode",
							separator = { left = "", right = "" },
							right_padding = 1,
						},
					},
					lualine_b = {
						{ "filename" },
						{ "branch" },
					},
					lualine_c = { "fileformat" },
					lualine_x = { diagnostics },
					lualine_y = {
						{ "filetype" },
						{ "fileformat" },
					},
					lualine_z = {
						{
							"progress",
							icon = "󰦨",
							separator = {
								right = "",
							},
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
}

return {
	Ui.colorschemes.catppuccin,
	Ui.lualine,
	Ui.bufferline,
	Ui.nvim_tree,
	Ui.dressing,
	Ui.indent_blankline,
	Ui.gitsigns,
}
