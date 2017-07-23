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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Space> i
nmap <C-i> ggvG=<CR>
nmap <C-@> <Esc>:Explore<CR>
nmap . <Esc>:Files<CR>
nmap , <Esc>:Ag<CR>
nmap - <Esc>:Buffers<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.html set filetype=html.htmldjango
au BufRead,BufNewFile *.py set filetype=python.django
au FileType python set omnifunc=jedi#completions shiftwidth=4 tabstop=4 softtabstop=4 colorcolumn=80 completeopt-=preview
au FileType elixir set colorcolumn=80
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
set hidden
set ruler
set number
set nolist
set clipboard=unnamed
set mouse=a
set ttymouse=sgr
set nofoldenable
set modifiable
set novisualbell
set showtabline=1
set linespace=0
set laststatus=2
set cmdheight=1
set backspace=2
set matchtime=5
set showmatch
set nohlsearch
set incsearch
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set cursorline
set cursorcolumn
set ttyfast
set ttyscroll=3
set lazyredraw
set synmaxcol=4096
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*deps/*,*_build/*,*node_modules/*
set wildmenu


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_localrmdir="rm -rf"
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_liststyle = 1
let g:netrw_banner = 0
let mapleader = "\"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme and Colors Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set t_Co=256
hi Comment cterm=italic
colorscheme space-vim-dark

let python_highlight_all = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airlines Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_spacemacs'
let g:airline#extensions#tabline#enabled = 1


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
