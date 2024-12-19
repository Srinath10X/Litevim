--leader key 
vim.g.mapleader = " "

-- local variable for conciseness
local keymap = vim.keymap

-- General keymap's
keymap.set("i","fj","<ESC>") -- i to go to into insert mode and fj is same as esc
keymap.set("n","<leader>nh",":nohl<CR>") -- to clear search space+h 

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- buffer management 
keymap.set("n","gt",":bn<CR>") -- next buffer
keymap.set("n","gT",":bp<CR>") -- previous buffer
keymap.set("n","gx",":bdelete!<CR>") -- buffer delete 

-- toggle terminal
keymap.set("n","<c-t>",":ToggleTerm direction=float<CR>") -- buffer delete 

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- split windows equally
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tabs 
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Plugin keymap's
-- window maximizer
keymap.set("n","<leader>sm",":MaximizerToggle<CR>")

-- nvim tree
keymap.set("n","<leader>e",":NvimTreeFindFileToggle<CR>")

-- telescope 
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
