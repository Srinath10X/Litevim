-- https://github.com/lukas-reineke/headlines.nvim
-- This already comes installed with lazyvim but I modify the heading colors and
-- also the lines above and below
-- It also adds these { "◉", "○", "✸", "✿" } symbols in headings

return {
	"lukas-reineke/headlines.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		-- Define custom highlight groups using Vimscript
		vim.cmd([[highlight Headline1 guibg=#1e1e2e guifg=#89b4fa]])
		vim.cmd([[highlight Headline2 guibg=#1e1e2e guifg=#f38ba8]])
		vim.cmd([[highlight Headline3 guibg=#1e1e2e guifg=#a6e3a1]])
		vim.cmd([[highlight Headline4 guibg=#1e1e2e guifg=#b4befe]])
		vim.cmd([[highlight Headline5 guibg=#1e1e2e guifg=#f9e2af]])
		vim.cmd([[highlight Headline6 guibg=#1e1e2e guifg=#eba0ac]])
		-- Defines the codeblock background color to something darker
		vim.cmd([[highlight CodeBlock guibg=#181825]])
		-- When you add a line of dashes with --- this specifies the color, I'm not
		-- adding a "guibg" but you can do so if you want to add a background color
		vim.cmd([[highlight Dash guifg=white]])

		-- Setup headlines.nvim with the newly defined highlight groups
		require("headlines").setup({
			markdown = {
				-- If set to false, headlines will be a single line and there will be no
				-- "fat_headline_upper_string" and no "fat_headline_lower_string"
				fat_headlines = false,
				--
				-- Lines added above and below the header line makes it look thicker
				-- "lower half block" unicode symbol hex:2584
				-- "upper half block" unicode symbol hex:2580
				fat_headline_upper_string = "▄",
				fat_headline_lower_string = "▀",
				--
				-- You could add a full block if you really like it thick ;)
				-- fat_headline_upper_string = "█",
				-- fat_headline_lower_string = "█",
				--
				-- Other set of lower and upper symbols to try
				-- fat_headline_upper_string = "▃",
				-- fat_headline_lower_string = "-",
				--
				headline_highlights = {
					"Headline1",
					"Headline2",
					"Headline3",
					"Headline4",
					"Headline5",
					"Headline6",
				},
				-- bullet_highlights = {
				--   "@text.title.1.marker.markdown",
				--   "@text.title.2.marker.markdown",
				--   "@text.title.3.marker.markdown",
				--   "@text.title.4.marker.markdown",
				--   "@text.title.5.marker.markdown",
				--   "@text.title.6.marker.markdown",
				-- },
				bullet_highlights = {
					"@text.title.1.marker.markdown",
					"@text.title.2.marker.markdown",
					"@text.title.3.marker.markdown",
					"@text.title.4.marker.markdown",
					"@text.title.5.marker.markdown",
					"@text.title.6.marker.markdown",
				},

				bullets = { " ", " ", " " },
			},
		})
	end,
}
