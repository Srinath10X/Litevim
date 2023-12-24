-- CCC.nvim
-- Default keybindings is
-- "i" to change the color format in the editing mode
return {
	"uga-rosa/ccc.nvim",
	config = function()
		require("ccc").setup({
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		})
	end,
}
