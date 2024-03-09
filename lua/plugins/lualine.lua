-- lualine

local diagnostics = {
  "diagnostics",
  sections = { "error", "warn" },
  colored = true, -- Displays diagnostics status in color if set to true.
  always_visible = true, -- Show diagnostics even if there are none.
}

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
      -- disabled_filetypes = { "NvimTree" },
      component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },

    --[[
	
		            Lualine has sections as shown below. 
		  ╭─────────────────────────────────────────────────────────╮
		  │   +-------------------------------------------------+		│
		  │   | A | B | C                             X | Y | Z |		│
		  │   +-------------------------------------------------+		│
		  ╰─────────────────────────────────────────────────────────╯

		--]]

    sections = {
      lualine_a = {
        {
          icon = "",
          "mode",
          right_padding = 2,
          left_padding = 2,
          separator = {
            left = "",
            right = "",
          },
        },
      },
      lualine_b = {
        {
          "filetype",
          icon_only = true,
          color = { fg = "#bcc0cc" },
        },
        {
          "filename",
          color = { fg = "#bcc0cc" },
        },
      },
      lualine_c = {},
      lualine_x = { diagnostics },
      lualine_y = {
        {
          "filetype",
          color = { fg = "#bcc0cc" },
          separator = {
            left = "",
          },
        },
      },
      lualine_z = {
        {
          "progress",
          icon = "󰦨",
          separator = {
            left = "",
            right = "",
          },
        },
      },
    },
  },
}
