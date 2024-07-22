-- importing core utils from the core
local status_ok, utils = pcall(require, "core.utils")
if not status_ok then
  vim.api.nvim_echo({
    { "Unable to import utils", "\nError: " },
  }, true, {})
  return nil
end

-- modules here
local modules = {
  core = {
    "options",
    "keymaps",
  },
  lazy = "lite",
}

utils.requireModules(modules)
