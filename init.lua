-- importing core utils from the core
local status_ok, utils = pcall(require, "core.utils")
if not status_ok then
  print("Failed to load core utils!")
  return nil
end

-- modules here
local modules = {
  "core.options", -- options
  "core.keymaps", -- keymaps
  "lite", -- lazy
}

-- loopover to require modules
for _, module in ipairs(modules) do
  utils.safe_require(module)
end
