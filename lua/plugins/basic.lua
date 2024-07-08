local M = {
  autopairs = {
    "windwp/nvim-autopairs",
    opts = {},
  },

  accelerated = {
    "rainbowhxch/accelerated-jk.nvim",
    event = "BufEnter",
    opts = {
      mode = "time_driven",
      enable_deceleration = false,
      acceleration_motions = {},
      acceleration_limit = 250,
      acceleration_table = { 7, 12, 17, 21, 24, 26, 28, 30 },
    },
  },

  comment = {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("Comment").setup()
    end,
  },

  toggle_term = {
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
  },

  outline = {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {},
  },
}

return {
  M.autopairs,
  M.accelerated,
  M.comment,
  M.toggle_term,
  M.outline,
}
