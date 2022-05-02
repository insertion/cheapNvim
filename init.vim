" @wanglei
" startup plugins manage     
lua require('basic')
lua require('plugins')
lua require('keybindings')

" plugins config
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/bufferline')

" basic vimrc config
set background="dark"
colorscheme gruvbox
