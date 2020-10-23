# vimconfig

vim配置文件

## 简介
---
vim的配置文件备份，办公室的，家里的，虚拟机的。。。每一个都要配置遍vim，烦。


## 适用范围
---
- 操作系统
    - Linux(Deepin, Ubuntu 18.04, centos 7)
    - Windows(windows xp, Win7)
    - MacOS

## 使用

- 第一步 `git clone https://github.com/jiftle/vimrc.git'
- 第二步 `cd vimrc/install/linux/`
- 第三步 `sh install.sh`
- 第四步 启动vim，命令模式执行`:PlugInstall`

## 扯淡
---
- deepin是适合工作的linux操作系统，最好用的没有之一。以后可能会使用更好用的linux版本吧。
    - deepin 15.11  非常好的版本
    - deepin V20    内核升级到5.4.9，文本编辑器可以使用emoji表情了，但是系统变慢了，不完美的升级
- 远离Windows，远离广告，排除广告干扰，还你一个干净的世界
- 垃圾360，广告机

## github仓库地址
---
- github: https://github.com/jiftle/vimrc.git


## 依赖
---
- 只需要安装git客户端即可
- curl 不需要

## 注意事项

- 自动完成插件，需要vim8.2及以上版本(浮动窗口特性)
- 如果不具备，在.vimrc中禁用coc插件

## 常见问题
---
- 不加载用户目录下vimrc文件
	- 原因： 用户目录下没有.vimrc文件，默认加载vim安装目录下的_vimrc文件
	- vimrc加载顺序，详细参考： https://www.cnblogs.com/litifeng/p/5597494.html
- 启动时提示未能识别的plug...
    - 原因： .vim下autoload下的Plug.vim插件未能识别
    - 处理办法： 手动复制Plug.vim到gvim的autoload目录下


## Thanks
---
- [vimplug](https://github.com/junegunn/vim-plug/)

## History

- 2019-12-24
    - 加入UltiSnips快捷片段插件，快速输入文档或代码片段，能够极大的提高效率
    - 但是解决YCM和UltiSnips冲突的办法不完美，自动完成下拉窗口不能正常显示
- 2020-10-23
    - vim.plug 插件管理器，从GitHub或GitEe自动更新，通过shell脚本实现
- 2020-10-24
    - GitEe 脚本有问题，恢复为官方脚本
    - 默认带有初始的脚本插件，不再需要再次更新
    - Coc插件，在另外的目录还需要自己安装更新
