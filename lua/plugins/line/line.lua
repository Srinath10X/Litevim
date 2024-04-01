local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local diagnostics = {
  "diagnostics",
  sections = { "error", "warn" },
  colored = true, -- Displays diagnostics status in color if set to true.
  always_visible = true, -- Show diagnostics even if there are none.
}

local colors = {
  blue = "#80a0ff",
  cyan = "#79dac8",
  -- black = "#1e2030", -- catppuccin
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
  },
  sections = {
    lualine_a = {
      { icon = "", "mode", separator = { left = "", right = "" }, right_padding = 2 },
    },
    lualine_b = {
      "filename",
      "branch",
    },
    lualine_c = { "fileformat" },
    lualine_x = { diagnostics },
    lualine_y = {
      "filetype",
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

lualine.setup()
