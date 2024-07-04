local M = {
	-- Colorscheme's
	{
		"catppuccin/nvim", -- catppuccin
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("catppuccin")
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}

return M
