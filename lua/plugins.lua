-- call packer to manage plugins
return require('packer').startup(function ()
    -- manage packer itself
    use 'wbthomason/packer.nvim'

    -- fuzzy search

    -- vim status line and theme
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- file explorer
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    -- wecome page
    use 'mhinz/vim-startify'

    -- use the sign colume to indicate added, modified and removed line
    use 'mhinz/vim-signify'

    --theme
    use 'ellisonleao/gruvbox.nvim'

    --sytax highlight
    use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}

    -- tabline
    use 'akinsho/bufferline.nvim'
    
    -- leave insertMode with en
    use 'jiazhoulvke/ibus-autoswitch.vim'
end)
