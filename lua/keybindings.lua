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

-- 插入模式下删除一行
map("i", "<C-d>", "<C-o>dd", opt)
-- 退出插入模式后保存文件
map("i", "<C-s>", '<C-o>:write<CR><cmd>lua vim.lsp.buf.format()<CR>', opt)
-- 切换文件树
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- 切换tab
map("n", "<space>.", ":BufferLineCycleNext<CR>", opt)
map("n", "<space>,", ":BufferLineCyclePrev<CR>", opt)
-- 保存所有并退出
map("n", "<leader>q", ":wqa<CR>", opt)

-- 打开telescope
map('n', '<space>q', '<cmd>Telescope<CR>', opt)
local plugin_map = {}

--lsp map, only map the followig keys after the language server attachs to the current buffer
plugin_map.lsp_map = function(buffer_map)
  buffer_map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  buffer_map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
end

return plugin_map
