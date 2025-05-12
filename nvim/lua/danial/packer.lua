-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- lua/plugins/rose-pine.lua
  use({
	  "rose-pine/neovim",
	  name = "rose-pine",
	  config = function()
		  vim.cmd("colorscheme rose-pine")
	  end
  })

  -- nvim-treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/nvim-treesitter-context'

  -- harpoon 
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  use 'echasnovski/mini.surround'

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'tpope/vim-fugitive'
  use 'neovim/nvim-lspconfig'
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use 'github/copilot.vim'
  use 'mfussenegger/nvim-lint'
  use 'lewis6991/gitsigns.nvim'
  use {
      "nvim-tree/nvim-web-devicons",
      config = function()
          require("nvim-web-devicons").setup()
      end
  }

  use({
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      },
  })

  use 'APZelos/blamer.nvim'

end)
