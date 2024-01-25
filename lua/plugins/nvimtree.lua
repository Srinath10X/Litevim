-- nvim-tree
return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    -- disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- setup function
    require("nvim-tree").setup({
      renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        root_folder_label = ":t",
        indent_width = 2,
        indent_markers = {
          enable = false,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            none = " ",
          },
        },
        icons = {
          glyphs = {
            folder = {
              -- for your custom icons in folder opening and closing in nvim-tree
              -- arrow_closed = "  ",
              -- arrow_open = "  ",
              default = "󰉋",
              open = "",
              empty = "",
              empty_open = "",
            },
          },
        },
      },
    })
  end,
}
