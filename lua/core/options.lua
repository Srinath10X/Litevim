-- local variable
local opt = vim.opt

-- tilder sing
vim.opt.fillchars = { eob = " " } -- remove's tilder sign for blanks

-- line number's
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tab-key
opt.shiftwidth = 2 -- 2 spaces for indentation

-- line wrapping
opt.wrap = true -- wrap the line

-- search
opt.ignorecase = true -- for non-case-sensitive search
opt.smartcase = true -- for upper-case search

-- cursor line
opt.cursorline = true -- enable's the cursor line

-- appereance
opt.termguicolors = true -- use's terminal gui color's
opt.background = "dark" -- for dark background
opt.signcolumn = "yes" -- trust me bro

-- backspace
opt.backspace = "indent,eol,start" -- just to work our backspace key properly

-- clipboard
opt.clipboard:append("unnamedplus") -- to copy something from neovim to the system clipboard

-- split windows
opt.splitright = true
opt.splitbelow = true

-- iskeyword
-- for any key word you want to consider as a word while using dw
-- opt.iskeyword:append("_")
-- btw these options are from josean-dev/dev-environment-files
-- https://github.com/josean-dev/dev-environment-files
