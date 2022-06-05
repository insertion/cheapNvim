-- lua使用require函数来加载模块, require函数返回一个由常量和函数组成的table
--  注册startup函数
return require('packer').startup(function(use)
  -- manage packer itself
  use 'wbthomason/packer.nvim'

  -- lsp config
  use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }

  -- debug Adapter Protocol client
  use 'mfussenegger/nvim-dap'

  -- cmake
  use 'Shatur/neovim-cmake'

  -- displays a popup with possible keybindings
  use "folke/which-key.nvim"

  -- fuzzy search,done
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-symbols.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'

  -- vim status line and theme,done
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- taglist
  use 'simrat39/symbols-outline.nvim'

  -- file explorer,done
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- nvim-cmp 只有 hrsh7th/nvim-cmp 是插件本身,其他cmp-xxx 基本都是插件补全来源
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
  use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
  use 'hrsh7th/nvim-cmp' --engine
  use 'hrsh7th/vim-vsnip' --engine
  use 'onsails/lspkind-nvim'

  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  -- wecome page,done
  use 'mhinz/vim-startify'

  -- use the sign colume to indicate added, modified and removed line,done
  use 'mhinz/vim-signify'

  --theme,done
  use 'ellisonleao/gruvbox.nvim'

  --sytax highlight
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- tabline,done
  use 'akinsho/bufferline.nvim'

  -- leave insertMode with en, done
  use 'jiazhoulvke/ibus-autoswitch.vim'
  -- windows im switch
  use 'leiyi548/vim-im-select'
end)
