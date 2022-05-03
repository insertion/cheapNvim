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
  clangd = {},
  --bashls = require("lsp.language.bash"),
  --pyright = require("lsp.language.pyright"),
  --jsonls = require("lsp.language.json"),
}

for name, custom_opts in pairs(servers) do
    local is_found, _ = lsp_installer.get_server(name)
    if is_found then
      -- table 的索引使用方括号[],Lua也提供.操作
      -- 使用[]操作符, 索引可以是变量
      -- 使用.操作符,索引不能是变量
      lsp_config[name].setup(custom_opts)
    end
end