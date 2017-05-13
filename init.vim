"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Code Navigation
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf.vim'

"""" Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'jebaum/vim-tmuxify'

"""" Code completation
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets' | Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim'

"""" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'cohama/agit.vim'

"""" Linters
Plug 'w0rp/ale'

"""" Eye candy
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
Plug 'itchyny/vim-cursorword'
Plug 'liuchengxu/space-vim-dark'
Plug 'liuchengxu/eleline.vim'

"""" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'

"""" Python
Plug 'davidhalter/jedi-vim'
Plug 'hdima/python-syntax'

"""" Go
Plug 'fatih/vim-go'

"""" HTML
Plug 'alvarolizama/vim-html'
Plug 'othree/html5.vim'
Plug 'vim-scripts/HTML-AutoCloseTag'

"""" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

"""" JS
Plug 'othree/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'vim-scripts/JSON.vim'

"""" Elm Support
Plug 'lambdatoast/elm.vim'

"""" Docker
Plug 'ekalinin/Dockerfile.vim'

"""" Other plugins
Plug 'sjl/gundo.vim'
Plug 'duggiefresh/vim-easydir'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
"Plug 'embear/vim-localvimrc'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Space> i
nmap <C-i> ggvG=<CR>
nmap - <Esc>:Files<CR>
nmap _ <Esc>:Explore<CR>
nmap . <Esc>:Buffers<CR>
nmap , <Esc>:Ag<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.html set filetype=html.htmldjango
au BufRead,BufNewFile *.py set filetype=python.django
au FileType html,markdown set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType python set omnifunc=jedi#completions shiftwidth=4 tabstop=4 softtabstop=4 colorcolumn=80 completeopt-=preview
au BufWritePre * :%s/\s\+$//e
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
au VimEnter * RainbowParenthesesToggleAll


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
scriptencoding utf-8
set encoding=utf-8

filetype on
filetype plugin on
filetype plugin indent on

set nocompatible
set confirm
set noswapfile
set nobackup
set linespace=0
set wildmenu
set hidden
set showtabline=0
set modifiable

set ruler
set number

set cmdheight=1
set backspace=2
set mouse=a
set ttymouse=sgr

set showmatch
set matchtime=5
set nohlsearch
set incsearch
set novisualbell

set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set nofoldenable

set wildignore=*.pyc

set smartindent
set autoindent

set cursorline
set cursorcolumn

set ttyfast
set nolazyredraw
set nolist
set clipboard=unnamed
set laststatus=2

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*deps/*,*_build/*,*node_modules/*


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_localrmdir="rm -rf"
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_liststyle = 1
let g:netrw_banner = 0
let mapleader = "º"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme and Colors Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set t_Co=256
hi Comment cterm=italic
colorscheme space-vim-dark

let python_highlight_all = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RBPT Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_lint_on_save = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jedi Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 1
let g:jedi#show_call_signatures = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Alchemist Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:alchemist_compile_basepath = '/app/'
