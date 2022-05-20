-- https://github.com/folke/which-key.nvim

--[[
  basic concept
  operators: 表示动作,操作, 例如删除,复制, 移动, 改变大小写等等
  motions:表示动作的移动范围, word表示对下一个word生效,dw:删除下一个word
  operators 和 motions 都可以添加数字前缀,表示执行的次数,比如2d2w 表示执行两次删除, 每次删除:两个word,实际上一共删除4个word
  text_objects: 表示可以执行命令的一段字符串,可以是单个字符或者是一个单词, 也可以是一行, 一段
--]]


local wk = require("which-key")
local setting = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 10, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- d2w: d corresponds to delete operator(action); 2 allows you to multiply the action twice; w represent word(motion)
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      -- misc bindings to work with windows
      windows = true, -- default bindings on <prefixed with <c-w>
      nav = true, -- navgate command prefixed with ] or [
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },

  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },

  triggers = "auto", -- automatically setup triggers or triggers = {"<leader>"} or specify a list manually
  triggers_blacklist = {
    -- list of "mode = {prefixes} that should never be hooked by WhichKey
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

-- 以<space>为前缀的快捷键
local spaceMapping = {
  q = { "<cmd>Telescope<CR>", "Open telescope" }
}

-- 以<leader>为前缀的快捷键
wk.register(spaceMapping, { mode = "n", noremap = true, nowait = false, silent = true, buffer = nil, prefix = "<space>" })

local leaderMapping = {
  q = { "<cmd>wqa<CR>", "Quit&Save" },
  ["1"] = { "<cmd>BufferLineGoToBuffer 1<CR>", "Windows-1" },
  ["2"] = { "<cmd>BufferLineGoToBuffer 2<CR>", "Windows-2" },
  ["3"] = { "<cmd>BufferLineGoToBuffer 3<CR>", "Windows-3" },
  ["4"] = { "<cmd>BufferLineGoToBuffer 4<CR>", "Windows-4" },
  ["5"] = { "<cmd>BufferLineGoToBuffer 5<CR>", "Windows-5" },
  ["0"] = { "<cmd>BufferLineCloseRight<CR><cmd>BufferLineCloseLeft<CR>", "Windows-@" }, --只保留当前,关闭其他
}
wk.register(leaderMapping, { mode = "n", noremap = true, nowait = false, silent = true, buffer = nil, prefix = "<leader>" })

-- lsp mapping major use telescope agent
local lspMapping = {
  ["<leader>f"] = { "<cmd>lua vim.lsp.buf.format({async = true})<CR>", "Format" },
  ["gd"] = { "<cmd>Telescope lsp_definitions<CR>", "Goto difinition" },
  ["gr"] = { "<cmd>Telescope lsp_references<CR>", "Find references" }
}
wk.register(lspMapping, { mode = "n", noremap = true, nowait = false, silent = true, buffer = nil, prefix = "" })

local findMapping = {
  ["ff"] = { "<cmd>Telescope find_files theme=ivy<CR>", "Find files" },
  ["fg"] = { "<cmd>Telescope live_grep theme=ivy<CR>", "Live grep" },
  ["fs"] = { "<cmd>Telescope lsp_dynamic_workspace_symbols theme=ivy<CR>", "Find symbol" },
  ["r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" }
}
wk.register(findMapping, { mode = "n", noremap = true, nowait = false, silent = true, buffer = nil, prefix = "<space>" })



wk.setup(setting)
