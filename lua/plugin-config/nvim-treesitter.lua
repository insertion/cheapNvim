-- :TSInstallInfo 查看支持的语言 
require 'nvim-treesitter.configs'.setup{
    ensure_installed = { "c", "lua", "cpp","python" },
    highlight = {
        enable = true,
    }
}
