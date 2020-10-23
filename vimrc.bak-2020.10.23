"设置编码,处理中文乱码,文件默认utf8编码
set fileencodings=utf-8,ucs-bom,cp936,big5
set encoding=utf-8
" gvim或MacVim字体设置
set guifont=DroidSansMono\ Nerd\ Font\ Mono\ 10
" colo gruvbox
"set guifont=DroidSansMono\ Nerd\ Font\ Mono


" -------------------- 插件声明 ------------
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" 默认配置，Tab空格设置
Plug 'jiftle/vim-jiftle-conf-default'
Plug 'jiftle/vim-jiftle-listchars'

" 常用插件集合
Plug 'jiftle/vim-jiftle-plugins-sets'
" BusHound抓包文件，语法高亮
Plug 'jiftle/vim-jiftle-bushound-syntax'

" Markdown博客预览插件
" Plug 'jiftle/vim-jiftle-gitmdblog'

" ==================== vim功能增强 ========================
" 中文帮助
Plug 'yianwillis/vimcdoc'


" ==================== 构建基本的IDE框架 ==================
" left : 树状文件浏览器
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" right : 显示tag
Plug 'majutsushi/tagbar'
" Bottom-Popup : 最近打开文件列表
Plug 'vim-scripts/mru.vim'
" Bottom : 好看的状态栏
Plug 'vim-airline/vim-airline'

" ------------- 文件修改历史 ------------
"  打开文件时，停留在上次编辑的位置
Plug 'farmergreg/vim-lastplace'
" 文件修改历史可视化 :UndotreeToggle
Plug 'mbbill/undotree'


" git状态显示, nerdtree的扩展
Plug 'Xuyuanp/nerdtree-git-plugin' 

" --------------- 美化 ----------------
" 文件浏览器显示好看的图标
Plug 'ryanoasis/vim-devicons'

" ------------- 模糊搜索 --------------
" 全局搜索某个单词，ubuntu需要在机器上安装`apt-get install ack-grep
Plug 'mileszs/ack.vim'
" 搜索插件  ---------- 不经常用，禁用
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" ==================== 主题配色 ====================
Plug 'morhetz/gruvbox'
Plug 'liuchengxu/space-vim-theme'
Plug 'iCyMind/NeoSolarized'
Plug 'joshdick/onedark.vim'


" " ====================== 通用开发语言支持 ======================
" " 自动补全
" Plug 'valloric/youcompleteme'
" " ----------- 批量注释 ---------------
" Plug 'scrooloose/nerdcommenter'
" " ---------------- 快捷代码块 --------------
" " 支持代码片段功能
" Plug 'SirVer/ultisnips'
" " 常用的代码片段
" Plug 'honza/vim-snippets'
" " 自定义片段插件，解决键位YCM冲突
" Plug 'jiftle/vim-jiftle-snippets'
" 
" 
" " ====================== golang 开发支持 ======================
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" 
" 
" " ====================== TypeScript 开发支持 ======================
" " 支持TypeScript
" Plug 'leafgarland/typescript-vim'
" 
" 
" " ------------- Emacs的Org-Mode，一种生活方式 -------------
" " vim-orgmode的依赖，<C-A>/<C-X>增加减少日期
" Plug 'tpope/vim-speeddating'
" " 缩窄到可视区域
" Plug 'chrisbra/NrrwRgn'
" Plug 'jceb/vim-orgmode'
" 
" " ----------------- Markdown 支持 --------------------
" Plug 'plasticboy/vim-markdown'
" " ----------------- Markdown TOC 支持 --------------------
" Plug 'mzlogin/vim-markdown-toc'
" 
" 
" " ======================== 时间管理 =======================
" " -------------- 记录Coding时间，存储到云端，有好看的图表 ------------
" Plug 'wakatime/vim-wakatime'
" 
" " -------------- 翻译工具 ----------------
" "  有道翻译
" Plug 'voldikss/vim-translator'
" 
" " =================== 测试区 ======================
" Plug 'godlygeek/tabular'
" 
" " 提供类似TurbC的菜单栏
" Plug 'skywind3000/vim-quickui'
" 
" " =============== 没搞明白的插件 ===================
" " 一款文本对齐的插件，非常神奇
" " Plug 'junegunn/vim-easy-align'
" 
" " ===================== 暂时无用的插件 =====================



" Initialize plugin system
call plug#end()

" --------------- 快捷代码块，配置 -----------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" -------------------- tagbar ---------------
" 设置tagbar的窗口宽度
let g:tagbar_width=30
" 映射Tagbar的快捷键,自动打开
map <F3> :TagbarToggle<CR>
map <F4> :NERDTreeToggle<CR>
" 编译运行
map <F5> :call CompileRunGcc()<CR>
map <F6> :MRU<CR>

" ----------------- 编译 ---------------
" 编译
func! CompileRunGcc()
    exec "w"
    "exec "!clear"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'javascript'
		exec "!node %<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
    exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
    "    exec "!go build %<"
    "    exec "!time go run %"
         exec ":GoBuild"
         exec ":GoRun"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunc

" ---------------- 根据不同平台，设置默认的配色方案 ---------------
if has('unix')
  "设置默认配色方案
  colorscheme default
elseif has('win64')
  " win7
  colorscheme darkblue
elseif has('win32')
  " xp
  colorscheme blue
else
endif

" ------------- vim-markdown 关闭自动折叠 -----------------
let g:vim_markdown_folding_disabled = 1

" --------------- 配色主题 --------------

" " clear all the menus
" call quickui#menu#reset()
" 
" " install a 'File' menu, use [text, command] to represent an item.
" call quickui#menu#install('&File', [
"             \ [ "&New File\tCtrl+n", 'echo 0' ],
"             \ [ "&Open File\t(F3)", 'echo 1' ],
"             \ [ "&Close", 'echo 2' ],
"             \ [ "--", '' ],
"             \ [ "&Save\tCtrl+s", 'echo 3'],
"             \ [ "Save &As", 'echo 4' ],
"             \ [ "Save All", 'echo 5' ],
"             \ [ "--", '' ],
"             \ [ "E&xit\tAlt+x", 'echo 6' ],
"             \ ])
" 
" " items containing tips, tips will display in the cmdline
" call quickui#menu#install('&Edit', [
"             \ [ '&Copy', 'echo 1', 'help 1' ],
"             \ [ '&Paste', 'echo 2', 'help 2' ],
"             \ [ '&Find', 'echo 3', 'help 3' ],
"             \ ])
" 
" " script inside %{...} will be evaluated and expanded in the string
" call quickui#menu#install("&Option", [
" 			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
" 			\ ['Set &Cursor Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
" 			\ ['Set &Paste %{&paste? "Off":"On"}', 'set paste!'],
" 			\ ])
" 
" " register HELP menu with weight 10000
" call quickui#menu#install('H&elp', [
" 			\ ["&Cheatsheet", 'help index', ''],
" 			\ ['T&ips', 'help tips', ''],
" 			\ ['--',''],
" 			\ ["&Tutorial", 'help tutor', ''],
" 			\ ['&Quick Reference', 'help quickref', ''],
" 			\ ['&Summary', 'help summary', ''],
" 			\ ], 10000)
" 
" " enable to display tips in the cmdline
" let g:quickui_show_tip = 1
" 
" " hit space twice to open menu
" noremap <space><space> :call quickui#menu#open()<cr>




