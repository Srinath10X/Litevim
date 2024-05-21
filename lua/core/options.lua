-- local variable
local opt = vim.opt

-- tilder sing
opt.fillchars = { eob = " " } -- remove's tilder sign for blanks

local function set_opts(opts)
	for k, v in pairs(opts) do
		vim.o[k] = v
	end
end

set_opts({
	number = true,
	relativenumber = true,
	tabstop = 2,                   -- 2 spaces for tab-key
	shiftwidth = 2,                -- 2 spaces for indentation
	wrap = true,                   -- wrap the line
	laststatus = 3,                -- status line
	ignorecase = true,             -- for non-case-sensitive search
	smartcase = true,              -- for upper-case search
	hlsearch = false,              -- false highlighting on search
	cursorline = true,             -- enable's the cursor line
	termguicolors = true,          -- use's terminal gui color's
	background = "dark",           -- for dark background
	signcolumn = "yes",            -- trust me bro
	backspace = "indent,eol,start", -- just to work our backspace key properly
	splitright = true,
	splitbelow = true,
	backup = false,
	writebackup = false,
	swapfile = false,
	scrolloff = 8,
})

opt.clipboard:append("unnamedplus") -- to copy something from neovim to the system clipboard
