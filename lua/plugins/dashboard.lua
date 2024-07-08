local Dashboard = {
  "goolord/alpha-nvim",
  requires = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.opts.hl = "String"

    -- Set header
    dashboard.section.header.val = {
      "                                                         ",
      "  ██╗     ██╗████████╗███████╗  ██╗   ██╗██╗███╗   ███╗  ",
      "  ██║     ██║╚══██╔══╝██╔════╝  ██║   ██║██║████╗ ████║  ",
      "  ██║     ██║   ██║   █████╗    ██║   ██║██║██╔████╔██║  ",
      "  ██║     ██║   ██║   ██╔══╝    ╚██╗ ██╔╝██║██║╚██╔╝██║  ",
      "  ███████╗██║   ██║   ███████╗   ╚████╔╝ ██║██║ ╚═╝ ██║  ",
      "  ╚══════╝╚═╝   ╚═╝   ╚══════╝    ╚═══╝  ╚═╝╚═╝     ╚═╝  ",
      "																													",
    }
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰍉  Find file", ":cd $HOME/code | Telescope find_files<CR>"),
      dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
      dashboard.button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
      dashboard.button("q", "󰗼  Quit Litevim", ":qa<CR>"),
    }

    dashboard.section.footer.val = {
      "",
      "Litevim v0.3.7-1",
      "",
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
  end,
}

return Dashboard
