" Use UTF-8 encoding
set encoding=utf-8

" Where we start..
set nocompatible
filetype plugin indent on
syntax on
" Buffers voodo
set hidden
" Folding
set foldmethod=indent
set foldlevel=99

inoremap <C-space> <C-x><C-o>
let g:SuperTabDefaultCompletionType = "context"
let g:html_use_css = 1

" Re-bind keys to move around the windows, instead of using Ctrl+w + <movement>:

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Toggle Tasklist Plugin
map <leader>td <Plug>TaskList

" Completion
set ofu=syntaxcomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete

" Always show status line
set laststatus=2
" Spice it up
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P\ [TYPE=%Y\ %{&ff}]\ 
" Below is useful, especially for Python code
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Config
set history=10001
set title

" Trust VIM to rock on...no backups hence; thats stupid though :)
set nobackup
set nowritebackup
set noswapfile

" Wrap search
set wrapscan
" Don't Wrap long lines
set nowrap

" As per Google's internal Python standards
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set softtabstop=2
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
set shiftround       " Indent to nearest tab stop
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
set showcmd         " Show (partial) command in status line.
set number          " Show line numbers.
set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
set ignorecase      " Ignore case in search patterns.
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
set backspace=indent,eol,start " Backspace more powerful
set smartindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
set mouse=a         " Enable the use of the mouse.
" Spelling related hooks
" Toggle spell checking with the following key combos 
map <F8> <Esc>:setlocal spell spelllang=en_us<CR>
map <F9> <Esc>:setlocal nospell<CR>
" Auto correct next misspelled word with first suggestion
map <F10> <Esc> ]s1z=

if  $TERM == 'linux' || $TERM == 'screen' || $TERM == 'screen-256color-bce'
    " Console and alike get the default
    colorscheme default
" For cursorline
highlight CursorLine ctermbg=41 ctermfg=none cterm=none
else
    " Regular
    set t_Co=256
    set cursorline 
    " Good themes during day
    "colo mayansmoke
    "colo beauty256-mod
    " And for the night
    "colorscheme inkpot-mod
    let g:molokai_original = 1
    colorscheme molokai
endif
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  "filetype plugin indent on
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  "autocmd FileType text setlocal textwidth=78
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END
endif " has("autocmd")

" Sane thing to do when pasting
set paste

" Plugins
" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle /home/archies/webdev<CR>

" Tag files
set tags=tags;$HOME/.vim/tags/

" TagList Plugin Configuration
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1 "Give it focus on opening
let Tlist_Close_On_Select = 0 "Don't close after selecting
let Tlist_Use_Right_Window = 1 "On the right, goes well with Nerdtree on left
let Tlist_File_Fold_Auto_Close = 1 "close folds when having multi-files
map <F7> :TlistToggle<CR>
