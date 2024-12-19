local success, _ = pcall(vim.cmd,"colorscheme catppuccin")

if not success then
	print("Colorscheme not found catppucccin")
	return
end 
