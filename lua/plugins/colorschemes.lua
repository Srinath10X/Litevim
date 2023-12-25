return {
	-- Colorscheme's
	{
		"catppuccin/nvim", -- catppuccin
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"LunarVim/lunar.nvim",
	},

	{
		"shaunsingh/nord.nvim", -- nord
		name = "nord",
	},

	{
		"Mofiqul/vscode.nvim", -- vscode
		name = "vscode",
	},
}
