local M = {
  -- catppuccin colorscheme
  catppuccin = {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- decay colorscheme
  decay = {
    "decaycs/decay.nvim",
    name = "decay",
  },

  -- Gitsigns
  gitsigns = {
    "lewis6991/gitsigns.nvim",
    event = { "BufNewFile", "BufReadPre" },
    opts = {},
  },

  -- IndentBlankline
  indent_blankline = {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufNewFile", "BufReadPre" },
    opts = {},
  },

  -- Neotree
  neo_tree = {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    event = { "VeryLazy" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- recommended but you can ignore this
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    init = function()
      vim.api.nvim_create_autocmd("BufEnter", {
        group = vim.api.nvim_create_augroup("NeoTreeInit", { clear = true }),
        callback = function()
          local f = vim.fn.expand("%:p")
          if vim.fn.isdirectory(f) ~= 0 then
            vim.cmd("Neotree current dir=" .. f)
            vim.api.nvim_clear_autocmds({ group = "NeoTreeInit" })
          end
        end,
      })
    end,
    keys = {
      { "<leader>e", ":Neotree toggle reveal<CR>", silent = true, { desc = "NeoTree reveal" } },
    },
    opts = {
      default_component_configs = {
        indent = {
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "╰",
          indent_size = 2,
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_hidden = false, -- only works on Windows for hidden files/directories
        },
        window = {
          width = 30,
          mappings = {
            ["<leader>e"] = "close_window",
          },
        },
      },
    },
  },

  -- Bufferline
  bufferline = {
    "akinsho/bufferline.nvim",
    event = { "BufNewFile", "BufReadPre" },
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        indicator = { style = "icon", icon = "" },
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        always_show_bufferline = false,
        offsets = {
          { filetype = "neo-tree", text = " 󰉋  Explorer", text_align = "center" },
        },
        max_name_length = 30,
        max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
        tab_size = 20,
      },
    },
  },

  -- Lualine
  lualine = {
    {
      -- Set lualine as statusline
      "nvim-lualine/lualine.nvim",
      -- event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
      event = { "VeryLazy" }, -- to disable, comment this out
      -- See `:help lualine.txt`
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        local diagnostics = {
          "diagnostics",
          sections = { "error", "warn" },
          colored = true, -- Displays diagnostics in color.
          always_visible = true,
        }

        -- catppuccin
        local colors = {
          blue = "#80a0ff",
          cyan = "#79dac8",
          black = "#1E1E2E",
          white = "#c6c6c6",
          red = "#ff5189",
          violet = "#d183e8",
          grey = "#303030",
          yellow = "#f5bf42",
        }

        -- local colors = {
        --   blue = "#80a0ff",
        --   black = "#171B20",
        --   white = "#b6beca",
        --   red = "#e05f65",
        --   violet = "#c68aee",
        --   grey = "#303030",
        --   yellow = "#f1cf8a",
        -- }

        local bubbles_theme = {
          normal = {
            a = { fg = colors.black, bg = colors.blue, gui = "bold" },
            b = { fg = colors.white, bg = colors.grey, gui = "bold" },
            c = { fg = colors.white, bg = colors.black, gui = "bold" },
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
            disabled_filetypes = { "alpha", "neo-tree" },
          },

          sections = {
            lualine_a = {
              {
                icon = "",
                "mode",
                right_padding = 1,
              },
            },
            lualine_b = { "filename" },
            lualine_c = { "branch" },
            lualine_x = { diagnostics },
            lualine_y = {
              { "filetype" },
            },
            lualine_z = {
              {
                "progress",
                icon = "󰦨",
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
      end,
    },
  },

  lspsaga = {
    "glepnir/lspsaga.nvim",

    branch = "main",
    event = { "BufNewFile", "BufReadPre" },
    dependencies = {
      { "nvim-treesitter/nvim-treesitter" },
    },
    opts = {
      scroll_preview = {
        scroll_down = "<C-f>",
        scroll_up = "<C-b>",
      },
      definition = {
        edit = "<CR>",
      },
      ui = {
        colors = {
          normal_bg = "#022746",
        },
      },
    },
  }, -- enhanced lsp uis

  treesitter = {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          "json",
          "javascript",
          "typescript",
          "tsx",
          "yaml",
          "html",
          "css",
          "markdown",
          "markdown_inline",
          "svelte",
          "graphql",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
        },
        -- auto install above language parsers
        auto_install = true,
      })
    end,
  },

  markdown = {
    "MeanderingProgrammer/markdown.nvim",
    main = "render-markdown",
    ft = "markdown",
    opts = {
      heading = {
        enabled = false,
        sign = false,
      },
      checkbox = {
        enabled = true,
        unchecked = {
          icon = "󰄱 ",
          highlight = "RenderMarkdownUnchecked",
        },
        checked = {
          icon = " ",
          highlight = "RenderMarkdownChecked",
        },
        custom = {
          todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
        },
      },
      code = {
        enabled = true,
        sign = false,
        style = "normal",
        left_pad = 2,
        right_pad = 3,
        width = "block",
        border = "thin",
        above = "▄",
        below = "▀",
      },
    },
  },

  noice = {
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {},
      dependencies = {
        "MunifTanjim/nui.nvim",
      },
    },
  },

  color_highlighter = {
    "brenoprata10/nvim-highlight-colors",
    opts = {},
  },
}

return {
  M.catppuccin,
  M.lualine,
  M.bufferline,
  M.neo_tree,
  M.indent_blankline,
  M.gitsigns,
  M.lspsaga,
  M.treesitter,
  M.markdown,
  M.noice,
  M.color_highlighter,
  M.decay,
}
