-- importing map core utils
local map = vim.keymap.set

-- General keymaps
map("n", "+", "<c-a>") -- increment
map("n", "-", "<c-x>") -- decrement
map("i", "<C-BS>", "<C-W>") -- to delete one word
map("n", "<esc><esc>", "<Cmd>nohl<CR>") -- to clear search space+h

-- Buffer management
map("n", "gt", "<Cmd>bn<CR>") -- next buffer
map("n", "gT", "<Cmd>bp<CR>") -- previous buffer
map("n", "gx", "<Cmd>bdelete!<CR>") -- buffer delete

-- Toggle terminal
map("t", "<esc>", [[<C-\><C-n>]])
map("t", "<C-h>", [[<C-\><C-n><C-W>h]])
map("t", "<C-j>", [[<C-\><C-n><C-W>j]])
map("t", "<C-k>", [[<C-\><C-n><C-W>k]])
map("t", "<C-l>", [[<C-\><C-n><C-W>l]])
map("n", "<c-t>", "<Cmd>ToggleTerm dir=./ direction=float<CR>") -- floating terminal
map("t", "<c-t>", "<Cmd>ToggleTerm dir=./ direction=float<CR>") -- floating terminal

-- Window management
map("n", "<leader>sv", "<C-w>v") -- split window vertically
map("n", "<leader>sh", "<C-w>s") -- split window horizontally
map("n", "<leader>se", "<C-w>=") -- split windows equally
map("n", "<leader>sx", "<Cmd>close<CR>") -- close current split window

-- Tabs
map("n", "<leader>tn", "<Cmd>tabn<CR>") -- go to next tab
map("n", "<leader>tp", "<Cmd>tabp<CR>") -- go to previous tab
map("n", "<leader>to", "<Cmd>tabnew<CR>") -- open a new tab
map("n", "<leader>tx", "<Cmd>tabclose<CR>") -- close current tab

-- Resize
map("n", "<leader>[", "<Cmd>vertical resize +5<CR>")
map("n", "<leader>]", "<Cmd>vertical resize -5<CR>")

-- Telescope
map("n", "<leader>fb", "<Cmd>Telescope buffers<CR>") -- list open buffers in current neovim instance
map("n", "<leader>fh", "<Cmd>Telescope help_tags<CR>") -- list available help tags
map("n", "<leader>fs", "<Cmd>Telescope live_grep<CR>") -- find string in current working directory as you type
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fc", "<Cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
map("n", "<leader>th", "<Cmd>Telescope colorscheme<CR>") -- select the colorscheme

-- LSP saga keymaps
map("n", "gf", "<Cmd>Lspsaga lsp_finder<CR>") -- show definition, references
map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>") -- go to declaration
map("n", "gd", "<Cmd>Lspsaga peek_definition<CR>") -- see definition and make edits in window
map("n", "gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>") -- go to implementation
map("n", "<leader>ca", "<Cmd>Lspsaga code_action<CR>") -- see available code actions
map("n", "<leader>rn", "<Cmd>Lspsaga rename<CR>") -- smart rename
map("n", "<leader>D", "<Cmd>Lspsaga show_line_diagnostics<CR>") -- show diagnostics for line
map("n", "<leader>d", "<Cmd>Lspsaga show_cursor_diagnostics<CR>") -- show diagnostics for cursor
map("n", "[d", "<Cmd>Lspsaga diagnostic_jump_prev<CR>") -- jump to previous diagnostic in buffer
map("n", "]d", "<Cmd>Lspsaga diagnostic_jump_next<CR>") -- jump to next diagnostic in buffer
map("n", "K", "<Cmd>Lspsaga hover_doc<CR>") -- show documentation for what is under cursor

-- Bufferline
map("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
map("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
map("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
map("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
map("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
map("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
map("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
map("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
map("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")
