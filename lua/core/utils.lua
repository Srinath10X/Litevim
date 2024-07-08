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

-- Helper function to set key mappings with default options
function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
