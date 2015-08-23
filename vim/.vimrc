" ��Ҫʹ��vi�ļ���ģʽ������vim�Լ���
set nocompatible
"��windows�汾��vim���˸��ģʽĬ����vi���ݣ������ǵ�ʹ��ϰ�߲�̫���ϣ��±��������ԸĹ���
set backspace=indent,eol,start
"���﷨����
syntax on
set cindent
"��ʾ�к�
set nu!
"���ͣ�����ϴδ򿪵�λ��
:au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
"�Զ�����
set autowrite
"�ÿո���滻�Ʊ�� 
set expandtab
"�Ʊ��ռ4���ո� 
set tabstop=4
"Ĭ������4���ո��С
set shiftwidth=4
"����ʽ����
set incsearch
"��������
set hlsearch
"�������Դ�Сд
set ignorecase
"��ʷ��¼��
set history=1000
"ͻ����ʾ��ǰ��
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white 
"guibg=darkred guifg=NONE

set paste

"��ʾ��������
"set encoding=chinese

set fileencodings=gb18030,gbk,gb2312,utf-8,big5,euc-jp,euc-kr,latin-1,cp936
"�ڶ�����ʾ�ļ���
"set stal=2
"������ʾ״̬��
set laststatus=2 
set ruler
"highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" ��ȡ��ǰ·������$HOMEת��Ϊ~
"function! CurDir()
"    let curdir = substitute(getcwd(), $HOME, "~", "g")
"    return curdir
"    endfunction
"set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\
" ���������������������ʱ������
set updatetime=100
"""""""""""""���ÿ���ctags"""""""""""""
"��һ��������ķֺ��Ǳز����ٵġ����������vim�����ڵ�ǰĿ¼��Ѱ��tags�ļ������û���ҵ�tags�ļ�������û���ҵ���Ӧ��Ŀ�꣬�͵���Ŀ¼ �в��ң�һֱ���ϵݹ顣��Ϊtags�ļ��м�¼��>·�����������tags�ļ����ڵ�·��������Ҫʹ�õڶ������������ı�vim�ĵ�ǰĿ¼��
"map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> 
"set tags=tags;
"set autochdir



nmap <silent> <F2> :tabp<CR>
nmap <silent> <F3> :tabn<CR>

nmap <silent> <F4> :TagbarToggle<CR>
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_right = 1                                "���Ҳ�                                              
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh call tagbar#autoopen()

map <F8> :nohl<CR>

"""""""""""""""""""""""cscope����""""""""""""""""""      
set cscopequickfix=s-,c-,d-,i-,t-,e-
"s������C�������
"g�����ұ�����
"d�����ұ��������õĺ���
"c�����ҵ��ñ������ĺ���
"t�����ұ��ַ���
"e�����ұ�egrepģʽ
"f�����ұ��ļ�
"i�����Ұ������ļ����ļ�
"����cscope�ļ�
map <F9> :!cscope -Rbq <CR><CR>


"""""""""""""����source explorer"""""""""""""
nmap <F5> :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8 "Ĭ�ϸ߶�
let g:SrcExpl_refreshTime = 100 "����ʱ��(ms) 
let g:SrcExpl_isUpdateTags = 0 "ÿ�δ�SrcExplʱ�Ƿ����tags(0Ϊ������) 
let g:SrcExpl_updateTagsKey = "<F12>" "����tags�Ŀ�ݼ�



"""""""""""""����NerdTree"""""""""""""
map <F6> :NERDTreeMirror<CR>
map <F6> :NERDTreeToggle<CR>
let NERDTreeWinPos = "left"
let NERDTreeDirArrows = 0
"let NERDTreeQuitOnOpen=1
"autocmd vimenter * NERDTree
"autocmd tabenter * NERDTree
autocmd BufReadPost * NERDTree
"��NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"vim �˳�ʱֱ�ӹر�NERDTree

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-P>"

filetype plugin on  
  
autocmd FileType python set omnifunc=pythoncomplete#Complete


