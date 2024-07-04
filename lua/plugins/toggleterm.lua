-- Toggle terminal
return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-t>]],
			direction = "float",
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})
	end,
}
