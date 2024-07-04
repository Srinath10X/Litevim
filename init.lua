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
  prefix = prefix or ""
  for key, module in pairs(modules) do
    if type(module) == "string" then
      require(prefix .. module)
    elseif type(module) == "table" then
      requireModules(module, prefix .. key .. ".")
    end
  end
end

requireModules(Modules)
