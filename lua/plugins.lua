-- lua使用require函数来加载模块, require函数返回一个由常量和函数组成的table
--  注册startup函数
return require('packer').startup(function (use)
    -- manage packer itself
    use 'wbthomason/packer.nvim'

    --lsp config
    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    -- fuzzy search,todo

    -- vim status line and theme,done
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- file explorer,done
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    -- wecome page,done
    use 'mhinz/vim-startify'

    -- use the sign colume to indicate added, modified and removed line,done
    use 'mhinz/vim-signify'

    --theme,done
    use 'ellisonleao/gruvbox.nvim'

    --sytax highlight
    use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}

    -- tabline,done
    use 'akinsho/bufferline.nvim'

    -- leave insertMode with en, done
    use 'jiazhoulvke/ibus-autoswitch.vim'
end)
