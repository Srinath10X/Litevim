local Dashboard = {
  "goolord/alpha-nvim",
  event = "VimEnter",
  requires = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Function to toggle statusline visibility
    local function toggle_statusline()
      local buftype = vim.bo.filetype
      if buftype == "alpha" or buftype == "lazy" or buftype == "mason" or buftype == "TelescopePrompt" then
        vim.o.laststatus = 0 -- Hide statusline
        vim.o.ruler = false -- Hide ruler
        vim.o.showcmd = false -- Hide command
      else
        vim.o.laststatus = 3 -- Show statusline
      end
    end

    -- Autocommand to toggle statusline visibility
    vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "FileType" }, {
      callback = toggle_statusline,
    })

    vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave" }, {
      callback = function()
        vim.o.laststatus = 3 -- Ensure statusline is shown in other buffers
      end,
    })

    -- possible values String,Identifier,Keyword,Number
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
      "Litevim v0.4.4",
      "",
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
  end,
}

return Dashboard
