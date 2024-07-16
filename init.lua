local utils = require("core.utils")

local Modules = {
  core = {
    "options",
    "keymaps",
  },
  lazy = "lite",
  plugins = {
    lsp = {
      "cmp",
      "lsp",
      "null-ls",
    },
  },
}

utils.requireModules(Modules)
