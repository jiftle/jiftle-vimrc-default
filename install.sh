echo '--> start install .vimrc'
cp .vimrc ~/
echo 'copy .vimrc to user dir'
cp -r .vim/ ~/
echo '--> install successfully'


# 安装Nerd字体，解决状态栏图标显示乱码问题

# 新建字体目录 
sudo mkdir -p /usr/share/fonts/vim-nerd

# 复制字体文件
sudo cp ./fonts/* /usr/share/fonts/vim-nerd/

# 刷新字体缓存
sudo fc-cache -fv

