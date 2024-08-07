-- Importing set_opts from utils
local utils = require("core.utils")
local set_opts = utils.set_opts

-- Default Options
set_opts({
  number = true, -- enables number lines
  relativenumber = true, -- enables relativenumber lines
  tabstop = 2, -- 2 spaces for tab-key
  shiftwidth = 2, -- 2 spaces for indentation
  wrap = true, -- wrap the line
  laststatus = 3, -- status line
  ignorecase = true, -- for non-case-sensitive search
  smartcase = true, -- for upper-case search
  hlsearch = true, -- true highlighting on search
  cursorline = true, -- enable's the cursor line
  termguicolors = true, -- use's terminal gui color's
  background = "dark", -- for dark background
  signcolumn = "yes", -- trust me bro
  backspace = "indent,eol,start", -- just to work our backspace key properly
  splitright = true, -- for splitting the window to right
  splitbelow = true, -- for splitting the window to bottom
  backup = false, -- to not take backup
  writebackup = false, -- to not write a backup file
  swapfile = false, -- not to save the file in swap
  scrolloff = 10, -- scroll before 8 line
  clipboard = "unnamedplus", -- to copy something from neovim to the system clipboard
  fillchars = "eob: ", -- to remove tilder sign at the end of buffer "~"
  conceallevel = 2, -- requried for obsidian
  breakindent = true, -- enable break indent
  undofile = true, -- enable to undo which you have worked on
}, false)

-- Global Options
set_opts({
  mapleader = " ", -- setting up leader key = <space>

  -- Neovide Padding Opts
  neovide_padding_top = 20,
  neovide_padding_bottom = 10,
  neovide_padding_right = 15,
  neovide_padding_left = 15,
}, true)
