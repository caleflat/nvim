return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP Config
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'williamboman/mason.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- Tab Management
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Fuzzy
  use { 'nvim-lua/plenary.nvim' } -- Depedency
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0'}

  -- Errors
  use {
    'folke/trouble.nvim', 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
		require('trouble').setup {}
    end
  }

  -- Theme
  use { "ellisonleao/gruvbox.nvim" }
  use { 'nyoom-engineering/oxocarbon.nvim' }
  use { 'projekt0n/github-nvim-theme' }

  -- Autocomplete
  use { 'ms-jpq/coq_nvim' }
  use { 'ms-jpq/coq.artifacts' }

  -- Go support
  use { 'ray-x/go.nvim' }
  use { 'ray-x/guihua.lua' }

  -- Tree
  use {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons', -- optional, for file icons
	},
	tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Markdown
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- LaTeX
  use { 'lervag/vimtex' }
end)
