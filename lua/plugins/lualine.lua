return {
	-- Set lualine as statusline
	"nvim-lualine/lualine.nvim",
	-- See `:help lualine.txt`
	opts = {
		options = {
			icons_enabled = true,
			theme = "catppuccin",
		},
		sections = {
			lualine_a = {
				{ icon = "", "mode", right_padding = 2 },
			},
		},
	},
}
