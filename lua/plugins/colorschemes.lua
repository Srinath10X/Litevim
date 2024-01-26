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
    "LunarVim/lunar.nvim", -- lunar theme
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
