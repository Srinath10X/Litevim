local LspConfig = {
  cmp = {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "L3MON4D3/LuaSnip", --snippet engine
      "saadparwaiz1/cmp_luasnip", --nvim_cmp source
      "hrsh7th/cmp-nvim-lsp", -- lsp completion capabilites
      "hrsh7th/cmp-buffer", -- buffer completions
      "hrsh7th/cmp-path", -- path completions
      "rafamadriz/friendly-snippets", -- friendly snippets
      "onsails/lspkind.nvim", -- vs code like icons
    },
  },

  mason = {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_pending = " ",
            package_installed = "󰄳 ",
            package_uninstalled = " ",
          },
        },
      })
    end,
  },

  lsp_config = {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {
            "lua_ls",
            "html",
            "cssls",
            "tsserver",
          },
        })
      end,
    },
  },

  lspsaga = {
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-treesitter/nvim-treesitter" },
    },
    config = function()
      require("lspsaga").setup({
        -- keybinds for navigation in lspsaga window
        scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
        -- use enter to open file with definition preview
        definition = {
          edit = "<CR>",
        },
        ui = {
          colors = {
            normal_bg = "#022746",
          },
        },
      })
    end,
  }, -- enhanced lsp uis

  treesitter = {
    "nvim-treesitter/nvim-treesitter",
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

  typescript = {
    "jose-elias-alvarez/typescript.nvim",
  },
}

return {
  LspConfig.cmp,
  LspConfig.mason,
  LspConfig.lsp_config,
  LspConfig.lspsaga,
  LspConfig.treesitter,
  LspConfig.typescript,
}
