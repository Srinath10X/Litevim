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

local function requireModules(modules, prefix)
  local stack = { { modules = modules, prefix = prefix or "" } }
  while #stack > 0 do
    local current = table.remove(stack)
    local currentModules = current.modules
    local currentPrefix = current.prefix

    for key, module in pairs(currentModules) do
      if type(module) == "string" then
        require(currentPrefix .. module)
      elseif type(module) == "table" then
        table.insert(stack, { modules = module, prefix = currentPrefix .. key .. "." })
      else
        error("Invalid module type: " .. type(module))
      end
    end
  end
end

requireModules(Modules)
