-- vim.o 相当于vimscript中的set, vim.bo buffer-scoped, vim.wo windows-scoped, vim-go global-scoped
-- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1

--启用对所有模式下鼠标的支持
vim.o.mouse = "a"

vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 使用行号
vim.wo.number = true

-- 高亮所在行
vim.wo.cursorline = true

-- 缩进4个空格等于一个Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

-- >> << 时移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 边输入边搜索
vim.o.incsearch = true

-- 命令行高为1
vim.o.cmdheight = 1

-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false

-- 行结尾可以跳到下一行
vim.o.whichwrap = 'b,s,<,>,[,],h,l'

-- 允许隐藏被修改过的buffer
vim.o.hidden = true

--使用airline等增强状态栏后不需要显示vim模式
vim.o.showmode = false

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 100

-- 快捷键迟滞时间
vim.o.timeoutlen = 500

-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
vim.o.wildmenu = true

-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"

-- always show tabline
vim.o.showtabline = 1 -- 0:不显示标签栏,1:创建标签页后才显示,2:总是显示

