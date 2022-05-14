local lsp_installer = require("nvim-lsp-installer")
local lsp_config = require("lspconfig")
-- 安装列表
-- { key: 服务器名， value: 配置文件 }
-- key 必须为下列网址列出的 server name，不可以随便写
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps

-- 在server.setup时如果发现对应语言没有安装会自动安装
lsp_installer.setup{}

local servers = {
  sumneko_lua = require("lsp.custom.lua"),
  clangd = require("lsp.custom.clangd"),
  --bashls = require("lsp.language.bash"),
  --pyright = require("lsp.language.pyright"),
  --jsonls = require("lsp.language.json"),
}

local on_attach = function(_, bufnr)
--[[
  local function buf_set_keymap(...)
      -- first para is buffer id
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    require("keybindings").lsp_map(buf_set_keymap)
--]]
  end

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

for name, custom_opts in pairs(servers) do
    local is_found, _ = lsp_installer.get_server(name)
    if is_found then
      -- table 的索引使用方括号[],Lua也提供.操作
      -- 使用[]操作符, 索引可以是变量
      -- 使用.操作符,索引不能是变量
      custom_opts.on_attach = on_attach
      custom_opts.capabilities = capabilities
      lsp_config[name].setup(custom_opts)
    end
end
