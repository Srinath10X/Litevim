-- importing core utils from the core
local status_ok, utils = pcall(require, "core.utils")

-- if the core utils is failed to load it will return this error
if not status_ok then
  vim.api.nvim_echo({
    { "Unable to import utils", "\nError: " },
  }, true, {})
  return nil
end

-- import modules here
local modules = {
  core = {
    "options",
    "keymaps",
    "snippets",
  },
  lazy = "lite",
}

utils.requireModules(modules)
