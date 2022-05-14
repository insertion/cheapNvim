" @wanglei
" startup plugins manage
lua require('basic')
lua require('plugins')
lua require('keybindings')

" plugins config
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-telescope')
lua require('plugin-config/which-key')
lua require('plugin-config/nvim-cmp')
" lsp config
lua require('lsp/setup')

" basic vimrc config
colorscheme gruvbox
