-- lualine
return {
	-- Set lualine as statusline
	"nvim-lualine/lualine.nvim",
	-- See `:help lualine.txt`
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			icons_enabled = true,
			theme = "catppuccin",
			disabled_filetypes = { "NvimTree" },
			component_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = {
				{ icon = "", "mode", right_padding = 2 },
			},

			lualine_b = {
				{ "filetype", icon_only = true, color = { fg = "#bcc0cc" } },
				{ "filename", color = { fg = "#bcc0cc" } },
			},

			lualine_c = { "fileformat" },
		},
	},
}
