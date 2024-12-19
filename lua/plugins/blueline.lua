local status, lualine = pcall(require,"lualine")
if not status then
	return
end 

require('lualine').setup{
	options = {
		icons_enabled = false,
		theme = "decay",
		component_separators = '|',
		section_separators = '',
	},
}
