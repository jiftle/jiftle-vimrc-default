StatusCode=$(curl -I -m 10 -o /dev/null -s -w %{http_code}  https://raw.githubusercontent.com/)

echo "  |--> 测试github网络状况，curl返回值=$StatusCode"

if [ $StatusCode = "200" ]; then
    echo "  |--> 从GitHub更新"
    # ------------- github下载 ------------------
    curl -fLo ./vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "  |--> 从GitEe更新"
    # ------------- gitee下载 ------------------
    curl -sfLo ./vim/autoload/plug.vim --create-dirs \
      https://gitee.com/yaozhijin/vim-plug/raw/master/plug.vim
fi

echo "------------ vim.plug 插件 更新完毕 -----------------"
