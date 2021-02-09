" 基础配置
set nocompatible    " 不兼容
filetype on         " 检测文件类型
syntax enable       " 语法高亮

" 显示相关
set number          " 设置行号显示
set relativenumber  " 设置相对行号
set colorcolumn=80  " 80列高亮
set hlsearch        " 搜索高亮

" 编辑相关
set expandtab       " 把制表符换成空格

" 折叠功能
" 空格键折叠
nnoremap <space> za

set foldmethod=indent   " 折叠方式: 缩进

" 其他
:let g:netrw_dirhistmax = 0     " 不保留历史记录

" plugged插件
call plug#begin("~/.vim/plugged")
Plug 'mtdl9/vim-log-highlighting'   " 日志高亮插件
call plug#end()
