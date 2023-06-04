# beta nvim config

# nvim的配置文件路径
主配置文件路径: ~/.config/nvim/init.lua
子配置文件路径: ~/.config/nvim/
## 一般配置
将配置文件放置在任意目录, 通过软链接,连接到~/.config/nvim/
## runtimepath
**lua/**目录

# vim的配置文件路径
主配置文件路径: ~/.vimrc
子配置文件路径: ~/.vim/

#包管理插件
## packer.nvim需要手动安装
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
安装完成后需要执行PackerInstall
lua require('plugins')

# 插件安装位置
~/.local/share/nvim/site/pack

# 字体图标
字体图标需要额外安装


# 配置文件说明
init.nvim: 包含用户最定义的插件配置,通过require加载

# 相关工具
fzf:
rigrep:
