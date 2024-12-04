-- importing set_opts from utils
local utils = require("core.utils")
local set_opts = utils.set_opts

-- Default Options
set_opts({
  number = true, -- enables number lines
  relativenumber = true, -- enables relativenumber lines
  tabstop = 2, -- 2 spaces for tab-key
  autoindent = true, -- autoindent easily
  smartindent = true, -- smartindent
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
  scrolloff = 10, -- scroll before 10 line
  clipboard = "unnamedplus", -- to copy something from neovim to the system clipboard
  fillchars = "eob: ", -- to remove tilder sign at the end of buffer "~"
  breakindent = true, -- enable break indent
  undofile = true, -- enable to undo which you have worked on
  updatetime = 250,
  timeoutlen = 300,
  showmode = false,
  mouse = "a", -- enables mouse
  -- cmdheight = 0,
}, false)

-- Global Options
set_opts({
  -- leaderkey = <space>
  mapleader = " ",

  -- disable netrw
  loaded_netrw = 1,
  loaded_netrwPlugin = 1,

  -- Neovide Padding Opts
  neovide_padding_top = 20,
  neovide_padding_bottom = 10,
  neovide_padding_right = 15,
  neovide_padding_left = 15,
}, true)

vim.api.nvim_create_augroup("markdown_settings", { clear = true })

-- autocmd for Markdown files
vim.api.nvim_create_autocmd("FileType", {
  group = "markdown_settings",
  pattern = "markdown",
  callback = function()
    vim.opt.conceallevel = 1 -- required for markdown.nvim
  end,
})

vim.api.nvim_create_user_command("Hterm", function()
  vim.cmd("split | terminal")
  vim.cmd("resize -5")

  -- Disable number and relativenumber for the terminal buffer
  vim.opt_local.number = false
  vim.opt_local.relativenumber = false

  -- Enter insert mode
  vim.cmd("startinsert")

  -- Map Ctrl + D to close the terminal without confirmation
  vim.api.nvim_buf_set_keymap(0, "t", "<C-d>", "<C-\\><C-n>:bd!<CR>", { noremap = true, silent = true })
end, {})
