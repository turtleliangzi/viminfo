
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
"显示行号
set number
"设置语法高亮
syntax enable
syntax on
"设置编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese
set fileencoding=utf-8
"语言设置
set langmenu=zh_CN.UTF-8
"使用鼠标
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
"高亮显示匹配的括号
set showmatch
"设置缩进
filetype plugin indent on
set tabstop=4
set shiftwidth=4
autocmd FileType html set tabstop=2 | set shiftwidth=2
set expandtab
set softtabstop=4
"去掉vi一致性
set nocompatible
"不备份
set nobackup
set timeout timeoutlen=3000 ttimeoutlen=100
"搜索字符高亮
set hlsearch
set incsearch
"搜索忽略大小写
set ignorecase

" vim 自身命令行模式智能补全
set wildmenu

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC


map <F12> :!svn ci -m up && svn up <CR>
map <C-t> :NERDTreeToggle<CR>
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

execute pathogen#infect()
syntax on
filetype plugin indent on


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nmap <F8> :TagbarToggle<CR>

" multi-cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'






" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f'

" taglist

 let Tlist_Show_One_File = 1 
 let Tlist_Exit_OnlyWindow = 1 
 let Tlist_Use_Right_Window = 1
 let Tlist_Use_SingleClick = 1
 let Tlist_Close_On_Select = 1
 let Tlist_GainFocus_On_ToggleOpen = 1
 let Tlist_Process_File_Always = 1

 " Define some single Blade directives. This variable is used for highlighting
 " only.
 let g:blade_custom_directives = ['datetime', 'javascript']

 " Define pairs of Blade directives. This variable is used for highlighting
 " and indentation.
 let g:blade_custom_directives_pairs = {
             \   'markdown': 'endmarkdown',
             \   'cache': 'endcache',
             \ }





let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }


set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'

" 插件列表结束
call vundle#end()
filetype plugin indent on

" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd

let g:molokai_original = 1
let g:rehash256 = 1

" 禁止光标闪烁
"set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
"set guioptions-=m
"set guioptions-=T


" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
let Powerline_symbols='compatible'

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1

" 基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
 set nofoldenable

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>f :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

