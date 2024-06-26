local function set_opts(opts)
  for k, v in pairs(opts) do
    vim.o[k] = v
  end
end

set_opts({
  number = true, -- enables number lines
  relativenumber = true, -- enables relativenumber lines
  tabstop = 2, -- 2 spaces for tab-key
  shiftwidth = 2, -- 2 spaces for indentation
  wrap = true, -- wrap the line
  laststatus = 3, -- status line
  ignorecase = true, -- for non-case-sensitive search
  smartcase = true, -- for upper-case search
  hlsearch = false, -- false highlighting on search
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
  scrolloff = 8, -- scroll before 8 line
  clipboard = "unnamedplus", -- to copy something from neovim to the system clipboard
  fillchars = "eob: ", -- to remove tilder sign at the end of buffer "~"
})
