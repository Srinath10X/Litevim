local M = {}

-- Helper function to require modules safely
function M.safe_require(module)
  local status_ok, lib = pcall(require, module)
  if not status_ok then
    return nil
  end
  return lib
end

-- Helper function to set options
function M.set_opts(opts, is_global)
  for k, v in pairs(opts) do
    if is_global then
      vim.g[k] = v
    else
      vim.o[k] = v
    end
  end
end

function M.requireModules(modules, prefix)
  local stack = { { modules = modules, prefix = prefix or "" } }
  while #stack > 0 do
    local current = table.remove(stack)
    local currentModules, currentPrefix = current.modules, current.prefix

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

return M
