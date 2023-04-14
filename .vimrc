" 基础配置
set nocompatible    " 不兼容
filetype on         " 检测文件类型
syntax enable       " 语法高亮

" 显示相关
set number          " 设置行号显示
set relativenumber  " 设置相对行号
set colorcolumn=120  " 120列高亮
set hlsearch        " 搜索高亮
set title           " 显示文件标题
set scrolloff=2

" 编辑相关
set expandtab       " 把制表符换成空格
set shiftwidth=4    " 默认一个tab为4个空格
set tabstop=4       " tab宽度为4
set autoindent       " 自动缩进
set wildmode=longest,list,full  " tab的时候，和bash一样
set wildmenu
set backspace=indent,eol,start
set ignorecase       " 默认不关注大小写
set smartcase        " 搜索时自动根据搜索的内容判断是否忽略大小写
set iskeyword+=\-    " 连字符当作一个单词

" 默认模板
au BufNewFile *.vue 0r ~/.vim/template/vue.template  " 打开vue文件时自动导入模板
au BufNewFile *.sh 0r ~/.vim/template/sh.template  " 打开vue文件时自动导入模板
au BufNewFile *.c 0r ~/.vim/template/c.template  " 打开vue文件时自动导入模板
au BufNewFile *.cpp 0r ~/.vim/template/cpp.template  " 打开vue文件时自动导入模板
au BufNewFile *.py 0r ~/.vim/template/python.template  " 打开vue文件时自动导入模板

" 关闭文件后校验
autocmd BufWritePost *.py !pylint <afile>
autocmd BufWritePost *.less !lessc <afile> > <afile>:r:r.css

" 跳转
:set mps+=<:>  " add square bracket to matchpairs
set incsearch  " 查找关键字时，及时匹配, 边搜索边跳转

" 折叠功能
" 空格键折叠
nnoremap <space> za

set foldmethod=indent   " 折叠方式: 缩进

" 快捷操作
" 运行脚本
map <F5> :call RunCode()<CR>
func! RunCode()
    exec "w"
    echo '执行'
    if &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'javascript'
        exec "!time node %"
    elseif &filetype == 'sh'
        exec "!time /bin/bash %"
    elseif &filetype == 'c'
        exec "!time gcc % && ./a.out"
    elseif &filetype == 'cpp'
        exec "!time g++ -O0 % && ./a.out"
    endif
endfunc

" 其他
:let g:netrw_dirhistmax = 0     " 不保留历史记录

" plugged plugin
call plug#begin("~/.vim/plugged")
Plug 'mtdl9/vim-log-highlighting'   " 日志高亮插件
" Plug 'masukomi/vim-markdown-folding'  " markdown高亮插件
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'davidhalter/jedi-vim'
call plug#end()

" pathogen plugin
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" set shellcmdflag=-ic
set noswapfile  " 不要生成.swp文件, 太麻烦了, 用git看太难受
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_new_list_item_indent = 4

set wrap
