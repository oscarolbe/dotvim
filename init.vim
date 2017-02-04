"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Code Navigation
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'

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

"""" Other plugins
Plug 'sjl/gundo.vim'
Plug 'duggiefresh/vim-easydir'

"""" Eye candy
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'chriskempson/base16-vim'

"""" Python
Plug 'davidhalter/jedi-vim'
Plug 'hdima/python-syntax'

"""" HTML
Plug 'alvarolizama/vim-html'
Plug 'othree/html5.vim'
Plug 'vim-scripts/HTML-AutoCloseTag'

"""" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'

"""" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

"""" JS
Plug 'othree/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'vim-scripts/JSON.vim'

"""" Docker
Plug 'ekalinin/Dockerfile.vim'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Space> i
nmap <C-i> ggvG=<CR>
nmap - <Esc>:CtrlPClearAllCache<CR><Esc>:CtrlP<CR>
nmap tt <Esc>:TagbarToggle<CR>


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
set lazyredraw
set nolist
set clipboard=unnamed

let g:netrw_localrmdir="rm -rf"
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let mapleader = "º"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set t_Co=256
set background=dark

let base16colorspace=256
let python_highlight_all = 1

colorscheme base16-monokai


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
  set go-=T
  set go-=r
  set go-=L
  set guifont=mononoki\ Bold:h12
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRLP Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'r'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RBPT Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jedi Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 1
let g:jedi#show_call_signatures = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{ALEGetStatusLine()}
set statusline+=%*
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'component_function': {
      \   'modified': 'LightLineModified',
      \   'readonly': 'LightLineReadonly',
      \   'fugitive': 'LightLineFugitive',
      \   'filename': 'LightLineFilename',
      \   'fileformat': 'LightLineFileformat',
      \   'filetype': 'LightLineFiletype',
      \   'fileencoding': 'LightLineFileencoding',
      \   'mode': 'LightLineMode',
      \   'ale': 'ALEGetStatusLine'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'ale', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }

let g:lightline.tabline = {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': [ [ 'close' ] ] }
let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'filename', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }


function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '': ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
