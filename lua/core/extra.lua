vim.filetype.add({ extension = { mdx = "mdx" } })
vim.treesitter.language.register("markdown", "mdx")

local isMdx = vim.endswith(vim.api.nvim_buf_get_name(0), ".mdx") and vim.o.filetype ~= "mdx"

if isMdx then
	vim.o.filetype = "mdx"
end
