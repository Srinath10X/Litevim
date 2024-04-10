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
    opts = {
      highlight_overrides = {
        all = function(colors)
          return {
            NvimTreeFolderIcon = { fg = colors.mauve },
          }
        end,
      },
    },
  },

  {
    "LunarVim/lunar.nvim", -- lunar theme
    name = "lunar",
  },

  {
    "shaunsingh/nord.nvim", -- nord theme
    name = "nord",
  },

  {
    "Mofiqul/vscode.nvim", -- vscode
    name = "vscode",
  },

  {
    "folke/tokyonight.nvim", -- tokyonight
    name = "tokyonight",
  },

  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
  },
}

return M
