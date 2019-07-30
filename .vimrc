syntax enable
set tabstop=4
set number
set autoindent
set nocompatible
set encoding=UTF-8

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'gmarik/Vundle.vim'
	"************************************************
	"VIM SUPERPOWERS
	"************************************************
	Plugin 'vim-airline/vim-airline'


	"************************************************
	"GEN SYNTAX PLUGINS
	"************************************************
	Plugin 'yggdroot/indentline'
	Plugin 'prettier/vim-prettier'
	"Plugin 'nathanaelkane/vim-indent-guides'

	"*************************************************
	"LANG SYNTAX PLUGINS
	"************************************************
	Plugin 'pangloss/vim-javascript'
	Plugin 'ap/vim-css-color'
	Plugin 'leafgarland/typescript-vim'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'elzr/vim-json'
	Plugin 'mxw/vim-jsx'
	Plugin 'othree/html5.vim'
	Plugin 'jparise/vim-graphql'

	"************************************************
	"NERD TREE PLUGINS
	"************************************************
	Plugin 'scrooloose/nerdtree'
	Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
	"devicons must load last
	Plugin 'ryanoasis/vim-devicons'
call vundle#end()

filetype plugin indent on

""************************************************
"AUTOCMD COMMANDS
"************************************************
	"Initiate prettier on vim startup
	autocmd FileType javascript set formatprg=prettier\ --stdin
	"Open NERDTree on vim startup
	autocmd vimenter * NERDTree
	"If NERDTree is last window just kill vim
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	" Go to previous (last accessed) window.
	autocmd VimEnter * wincmd p
	"Synch NERDTRee with current opened tab

"Set color scheme
colorscheme atom-dark-256

" loading the webdevicons plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
"Enable indent guides on startup
let g:indent_guides_enable_on_vim_startup = 1
