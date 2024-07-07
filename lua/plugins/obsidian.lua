return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/Documents/notes/",
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    ui = {
      enable = true,
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
      },
    },
    mappings = {
      ["<cr>"] = {
        action = function()
          return nil
        end,
      },
      ["<leader>tt"] = {},
    },
  },
}
