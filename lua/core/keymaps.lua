-- global leader key
-- <leader> = <space> key
vim.g.mapleader = " "

-- local variable for conciseness
local keymap = vim.keymap
local opts = { noremap = true }
local silent = { silent = true }

-- General keymap's
keymap.set("i", "fj", "<ESC>")                         -- i to go to into insert mode and fj is same as esc
keymap.set("n", "<leader>nh", "<Cmd>nohl<CR>", silent) -- to clear search space+h
keymap.set("i", "<C-BS>", "<C-W>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- buffer management
keymap.set("n", "gt", "<Cmd>bn<CR>", silent)       -- next buffer
keymap.set("n", "gT", "<Cmd>bp<CR>", silent)       -- previous buffer
keymap.set("n", "gx", "<Cmd>bdelete!<CR>", silent) -- buffer delete

-- toggle terminal
keymap.set("n", "<c-t>", "<Cmd>ToggleTerm direction=float<CR>", opts) -- floating terminal
keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
keymap.set("t", "fj", [[<C-\><C-n>]], opts)
keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)

-- window management
keymap.set("n", "<leader>sv", "<C-w>v")         -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")         -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")         -- split windows equally
keymap.set("n", "<leader>sx", "<Cmd>close<CR>") -- close current split window

-- tabs
keymap.set("n", "<leader>to", "<Cmd>tabnew<CR>")   -- open new tab
keymap.set("n", "<leader>tx", "<Cmd>tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", "<Cmd>tabn<CR>")     --  go to next tab
keymap.set("n", "<leader>tp", "<Cmd>tabp<CR>")     --  go to previous tab

-- Plugin keymap's
-- window maximizer
keymap.set("n", "<leader>sm", "<Cmd>MaximizerToggle<CR>")

-- Commenting
keymap.set("n", "<leader>/", "gcc")

-- nvim tree
keymap.set("n", "<leader>e", "<Cmd>NvimTreeFindFileToggle<CR>", { silent = true })

-- resize
keymap.set("n", "<leader>[", "<Cmd>vertical resize +1<CR>", { silent = true })
keymap.set("n", "<leader>]", "<Cmd>vertical resize -1<CR>", { silent = true })

-- vs code like line jump
keymap.set("i", "<c-Enter>", "<ESC>o")

-- ccc.nvim for color highlighting and color seleciton
keymap.set("n", "<leader>sc", "<Cmd>CccPick<CR>", { silent = true })
keymap.set("n", "<leader>cc", "<Cmd>CccConvert<CR>", { silent = true })

-- telescope
keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>")  -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<Cmd>Telescope live_grep<CR>")   -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<Cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<Cmd>Telescope buffers<CR>")     -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<Cmd>Telescope help_tags<CR>")   -- list available help tags
keymap.set("n", "<leader>th", "<Cmd>Telescope colorscheme<CR>") -- select the colorscheme

-- lsp saga keymaps
keymap.set("n", "gf", "<Cmd>Lspsaga lsp_finder<CR>")                     -- show definition, references
keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")          -- got to declaration
keymap.set("n", "gd", "<Cmd>Lspsaga peek_definition<CR>")                -- see definition and make edits in window
keymap.set("n", "gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>")       -- go to implementation
keymap.set("n", "<leader>ca", "<Cmd>Lspsaga code_action<CR>")            -- see available code actions
keymap.set("n", "<leader>rn", "<Cmd>Lspsaga rename<CR>")                 -- smart rename
keymap.set("n", "<leader>D", "<Cmd>Lspsaga show_line_diagnostics<CR>")   -- show  diagnostics for line
keymap.set("n", "<leader>d", "<Cmd>Lspsaga show_cursor_diagnostics<CR>") -- show diagnostics for cursor
keymap.set("n", "[d", "<Cmd>Lspsaga diagnostic_jump_prev<CR>")           -- jump to previous diagnostic in buffer
keymap.set("n", "]d", "<Cmd>Lspsaga diagnostic_jump_next<CR>")           -- jump to next diagnostic in buffer
keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>")                       -- show documentation for what is under cursor
keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>")                 -- see outline on right hand side

-- bufferline
keymap.set("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
keymap.set("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
keymap.set("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
keymap.set("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
keymap.set("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
keymap.set("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
keymap.set("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
keymap.set("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
keymap.set("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")

keymap.set("i", "<C-S>", "<Cmd>w!<CR>")

-- Neovide keymaps
-- neovide options to zoom in and zoom out fixed
if vim.g.neovide == true then
	vim.api.nvim_set_keymap(
		"n",
		"<C-+>",
		":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>",
		{ silent = true }
	)
	vim.api.nvim_set_keymap(
		"n",
		"<C-->",
		":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>",
		{ silent = true }
	)
	vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end

vim.g.neovide_padding_top = 20
vim.g.neovide_padding_bottom = 10
vim.g.neovide_padding_right = 15
vim.g.neovide_padding_left = 15
