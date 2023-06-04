-- nvimTree
vim.g.mapleader = "\\"

-- vim.api.nvim_set_keymap 是暴露给lua设置快捷键的接口
local map = vim.api.nvim_set_keymap
-- noremap 表示禁止重映射
local opt = { noremap = true, silent = true }

-- map("模式", "按键", "指令", opt)
-- "n": normal 模式
-- "v": visual 模式
-- "i"; insert 模式

-- 退出插入模式后保存文件
-- --map("i", "<C-s>", '<ESC><cmd>write<CR><cmd>lua vim.lsp.buf.format()<CR>', opt)
-- 切换文件树
-- map("n", "<A-m>", "<cmd>NvimTreeToggle<CR>", opt)
-- 大部分快捷键在which-key中设置
