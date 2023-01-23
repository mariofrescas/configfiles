-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- Detect tabstop and shiftwidth automatically
  use 'tpope/vim-sleuth'

  -- Show trailing spaces
  use 'ntpeters/vim-better-whitespace'

  -- Comment tool
  use 'numToStr/Comment.nvim'

  -- Toggle and display marks with m key
  use 'kshenoy/vim-signature'

  -- Close html tags
  use 'alvan/vim-closetag'

  -- Mappings to add/delete/change surroundings ("", (), {}, ...)
  use 'tpope/vim-surround'

  -- Insert or delete brackets, parens, quotes in pair
  use "windwp/nvim-autopairs"

  -- Jump to any location specified by two characters
  use 'justinmk/vim-sneak'

  -- Navigate throug splits with ctrl
  use 'christoomey/vim-tmux-navigator'

  -- Workspaces manager
  use 'vim-ctrlspace/vim-ctrlspace'

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- Git status for statusline
  use 'tpope/vim-fugitive'

  -- Git decorations, navigation, preview
  use 'lewis6991/gitsigns.nvim'

  -- Linting and formatting
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Themes
  use 'ellisonleao/gruvbox.nvim'

  -- Fuzzy Finder (files, lsp, etc)
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

  -- ****************************************************************
  -- LSP Configuration & Plugins
  -- ****************************************************************
  use {
    'neovim/nvim-lspconfig',

    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Automatically install lua LSP (for vim config)
      'folke/neodev.nvim'
    }
  }

  -- ****************************************************************
  -- Autocompletion
  -- ****************************************************************
  use {
    'hrsh7th/nvim-cmp',

    requires = {
      -- Required for language snippets
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  }

  -- ****************************************************************
  -- Highlight, edit, and navigate code
  -- ****************************************************************
  use {
    'nvim-treesitter/nvim-treesitter',

    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end
  }

  -- ****************************************************************
  -- File manager
  -- ****************************************************************
  use {
    'francoiscabrol/ranger.vim',

    requires = {
      'rbgrouleff/bclose.vim'
    }
  }

  -- ****************************************************************
  -- Handle tabs
  -- ****************************************************************
  use {
    'akinsho/bufferline.nvim',

    tag = 'v3.*',
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- Add custom plugins to packer from ~/.config/nvim/lua/custom/plugins.lua
  local has_plugins, plugins = pcall(require, 'custom.plugins')
  if has_plugins then
    plugins(use)
  end

  if is_bootstrap then
    require('packer').sync()
  end
end)

-- You'll need to restart nvim, and then it will work
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
