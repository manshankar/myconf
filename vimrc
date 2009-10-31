" Use UTF-8 encoding
set encoding=utf-8
" Enable filetype detection
filetype plugin on
filetype indent on
filetype on
" Taglist
nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_Auto_Open=1          " Auto Open
set history=10000               " Have a large history
set ignorecase                  " Case insensitive matching
set smartcase                   " Smart case matching
set smartindent
set incsearch                   " Incremental search
set tabstop=4                   " Sets the tab size to 4
set expandtab                   " Tab key inserts spaces
set shiftwidth=4                " Sets spaces used for (auto)indent
set shiftround                  " Indent to nearest tab stop
set backspace=indent,eol,start  " Backspace works more
"set autoindent       " Carries over previous indent to the next line
"set foldmethod=indent
" Swap files
"set noswapfile
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set mouse=a
"set uc=0
au BufRead /tmp/mutt-* set tw=72
"Spelling related hooks
"Toggle spell checking with the following key combos 
map <F6> <Esc>:setlocal spell spelllang=en_us<CR>
map <F7> <Esc>:setlocal nospell<CR>
"Or set it permanently
"setlocal spell spelllang=en_us
"Auto correct next misspelled word with first suggestion
imap <F10> <Esc> ]s1z=
map <F10> <Esc> ]s1z=
runtime! ftplugin/man.vim
"runtime! ftplugin/python.vim

" Color Schemes
"set bg=dark
" VC & screen
if $TERM == 'linux' || $TERM == 'screen-256color-bce'
	colorscheme default
    "colorscheme colorful
" X11
else
    set t_Co=256
	set cursorline
   	colorscheme xoria256
    "let g:zenburn_high_Contrast = 1
	"colorscheme zenburn
    "hi search ctermbg=223 ctermfg=238
    "hi incsearch ctermfg=223 ctermbg=238 gui=bold
    "hi CursorLine ctermbg=darkgray
endif
