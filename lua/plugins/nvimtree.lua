-- nvim-tree
return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		-- disable netrw
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		-- setup function
		require("nvim-tree").setup()
	end,
}
