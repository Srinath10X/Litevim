--------------------------
--| Require statements |--
--------------------------

------------
--| Core |--
------------
require("core.options")
require("core.colorscheme")
require("core.keymaps")

---------------
--| Plugins |--
---------------
require("plugins.comment")
require("plugins.filetree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.buffer")
require("plugins.toggleterm")
require("plugins.nvim-cmp")
require("plugins.auto-pairs")
require("plugins.treesitter")
require("plugins.nvim-colorizer")

-------------------
--| Lsp-Plugins |--
-------------------
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")

-------------------------
--| Installing Packer |--
-------------------------

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- Packer Plugin
  use 'wbthomason/packer.nvim'

	-- essentials
	use 'nvim-tree/nvim-tree.lua' -- nvim tree 
	use 'nvim-tree/nvim-web-devicons' -- dev icons
  use 'nvim-lualine/lualine.nvim' -- lua line
	use 'christoomey/vim-tmux-navigator' -- vim navigator
	use 'numToStr/Comment.nvim' -- comment 
	use 'szw/vim-maximizer' -- vim maximizer 
	use 'akinsho/bufferline.nvim'

	-- auto completition
	use 'hrsh7th/nvim-cmp' --> completition
	use 'hrsh7th/cmp-buffer' --> completition buffer 
	use 'hrsh7th/cmp-path' --> parth completition
	use 'hrsh7th/cmp-nvim-lsp'

	-- snippets 
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'

	-- auto pairs 
	use 'windwp/nvim-autopairs'

	-- toggle terminal 
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  -- My plugins here
  use 'mattn/emmet-vim' -- emmet plugin 
	use 'bluz71/vim-nightfly-colors' -- colorscheme nightfly
	use 'gko/vim-coloresque' -- vim coloresque
	use 'decaycs/decay.nvim' -- decay theme 
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'folke/tokyonight.nvim'

	-- lsp 
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

  -- Telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
	use("nvim-lua/plenary.nvim")
	use("BurntSushi/ripgrep")

	-- configuring lsp servers 
	use ({"glepnir/lspsaga.nvim",branch = 'main'})
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- neovim dash board 
	use 'nvimdev/dashboard-nvim'
  use {
      'goolord/alpha-nvim',
      requires = { 'nvim-tree/nvim-web-devicons' },
      config = function ()
			  local alpha = require("alpha")
 				local dashboard = require("alpha.themes.dashboard")

				-- Set header
				dashboard.section.header.val = {
           "                                                     ",
           "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
           "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
           "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
           "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
           "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
           "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
           "                                                     ",
				}

				-- Set menu
				dashboard.section.buttons.val = {
		      dashboard.button( "e", "  >  New file" , ":ene <BAR> startinsert <CR>"),
          dashboard.button( "f", "  >  Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
		      dashboard.button( "r", "  >  Recent"   , ":Telescope oldfiles<CR>"),
  		    dashboard.button( "s", "  >  Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
          dashboard.button( "q", "  >  Quit NVIM", ":qa<CR>"),
        }

					-- Send config to alpha
					alpha.setup(dashboard.opts)

 					-- Disable folding on alpha buffer
					vim.cmd([[
 					    autocmd FileType alpha setlocal nofoldenable
					]])
      end
  }

	use 'norcalli/nvim-colorizer.lua'

	-- markdown preview 

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
	use 'mlaursen/vim-react-snippets'

  -- git integration
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
