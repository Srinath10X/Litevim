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

return M
