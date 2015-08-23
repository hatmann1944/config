" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
"在windows版本中vim的退格键模式默认与vi兼容，与我们的使用习惯不太符合，下边这条可以改过来
set backspace=indent,eol,start
"打开语法高亮
syntax on
set cindent
"显示行号
set nu!
"光标停留在上次打开的位置
:au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
"自动保存
set autowrite
"用空格键替换制表符 
set expandtab
"制表符占4个空格 
set tabstop=4
"默认缩进4个空格大小
set shiftwidth=4
"增量式搜索
set incsearch
"高亮搜索
set hlsearch
"搜索忽略大小写
set ignorecase
"历史记录数
set history=1000
"突出显示当前行
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white 
"guibg=darkred guifg=NONE

set paste

"显示中文问题
"set encoding=chinese

set fileencodings=gb18030,gbk,gb2312,utf-8,big5,euc-jp,euc-kr,latin-1,cp936
"在顶端显示文件名
"set stal=2
"总是显示状态栏
set laststatus=2 
set ruler
"highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" 获取当前路径，将$HOME转化为~
"function! CurDir()
"    let curdir = substitute(getcwd(), $HOME, "~", "g")
"    return curdir
"    endfunction
"set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
" 启动函数变量快速浏览的时间设置
set updatetime=100
"""""""""""""设置开启ctags"""""""""""""
"第一个命令里的分号是必不可少的。这个命令让vim首先在当前目录里寻找tags文件，如果没有找到tags文件，或者没有找到对应的目标，就到父目录 中查找，一直向上递归。因为tags文件中记录的>路径总是相对于tags文件所在的路径，所以要使用第二个设置项来改变vim的当前目录。
"map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> 
"set tags=tags;
"set autochdir



nmap <silent> <F2> :tabp<CR>
nmap <silent> <F3> :tabn<CR>

nmap <silent> <F4> :TagbarToggle<CR>
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_right = 1                                "在右侧                                              
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh call tagbar#autoopen()

map <F8> :nohl<CR>

"""""""""""""""""""""""cscope设置""""""""""""""""""      
set cscopequickfix=s-,c-,d-,i-,t-,e-
"s：查找C代码符号
"g：查找本定义
"d：查找本函数调用的函数
"c：查找调用本函数的函数
"t：查找本字符串
"e：查找本egrep模式
"f：查找本文件
"i：查找包含本文件的文件
"生成cscope文件
map <F9> :!cscope -Rbq <CR><CR>


"""""""""""""设置source explorer"""""""""""""
nmap <F5> :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8 "默认高度
let g:SrcExpl_refreshTime = 100 "更新时间(ms) 
let g:SrcExpl_isUpdateTags = 0 "每次打开SrcExpl时是否更新tags(0为不更新) 
let g:SrcExpl_updateTagsKey = "<F12>" "更新tags的快捷键



"""""""""""""设置NerdTree"""""""""""""
map <F6> :NERDTreeMirror<CR>
map <F6> :NERDTreeToggle<CR>
let NERDTreeWinPos = "left"
let NERDTreeDirArrows = 0
"let NERDTreeQuitOnOpen=1
"autocmd vimenter * NERDTree
"autocmd tabenter * NERDTree
autocmd BufReadPost * NERDTree
"打开NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"vim 退出时直接关闭NERDTree

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-P>"

filetype plugin on  
  
autocmd FileType python set omnifunc=pythoncomplete#Complete


