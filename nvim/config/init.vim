"=============================================================================
" General *
"=============================================================================

"=======================================
" Set history to 500 lines
"=======================================
set history=500

"=======================================
" Autoread if the file is changed
"=======================================
set autoread

"=======================================
" strugle with keymaps?
"=======================================
nmap <leader>w :w!<cr>

"=======================================
" Handle permission denied errors
"=======================================
command W w !sudo tee % > /dev/null

"=============================================================================
" UI *
"=============================================================================

"=======================================
" Better vertically movement
"=======================================
set so=7

"=======================================
" Enable wildmenu
"=======================================
set wildmenu

"=======================================
" Show current position
"=======================================
set ruler

"=======================================
" Define cmd height
"=======================================
set cmdheight=2

"=======================================
" Buffer
"=======================================
set hid

"=======================================
" Configure backspaces
"=======================================
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"=======================================
" Ignore cacse when searching
"=======================================
set ignorecase

"=======================================
" Use smartcase
"=======================================
set smartcase

"=======================================
" Highlight search result
"=======================================
set hlsearch

"=======================================
" Ignore pattern when searching
"=======================================
set ignorecase

"=======================================
" Highlight pattern
"=======================================
set incsearch

"=======================================
" Indent shiftwidth
"=======================================
set shiftround

"=======================================
" Show invisible characters
"=======================================
set list
set listchars=tab:\|\ ,trail:•

"=======================================
" Modern search
"=======================================
set incsearch

"=======================================
" Better performance
"=======================================
set lazyredraw

"=======================================
" For regular expressions
"=======================================
set magic

"=======================================
" Detect modeline hints
"=======================================
set modeline

"=======================================
" Expand tab number
"=======================================
set tabpagemax=50

"=======================================
" Show matching brackets
"=======================================
set showmatch

"=======================================
" Who the hell invented this?
"=======================================
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"=======================================
" Margin
"=======================================
set foldcolumn=1

"=======================================
" Set grep tool
"=======================================
if executable('ack')
        set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
        set grepformat=%f:%l:%c:%m
endif

"=======================================
" MAC NVIM
"=======================================
if has("gui_macnvim")
    autocmd GUIEnter * set vb t_vb=
endif

"=======================================
" GUI Options
"=======================================
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

"=============================================================================
" UI Tweaks
"=============================================================================
set number
set showcmd
set lazyredraw
set laststatus=2
let &showbreak='↪ '
set splitbelow
set splitright

"=============================================================================
" Backups? Who cares ?
"=============================================================================

"=======================================
" Turn of them
"=======================================
set nobackup
set nowb
set noswapfile

"=============================================================================
" Text
"=============================================================================

"=======================================
" Use spacetabs
"=======================================
set expandtab

"=======================================
" Be smart
"=======================================
set smarttab

"=======================================
" Define tab
"=======================================
set shiftwidth=4
set tabstop=4

"=======================================
" Linebreaker
"=======================================
set tw=500

"=======================================
" Ident AUTO;SMART;WRAP Lines
"=======================================
set autoindent
set smartindent
set wrap

"=============================================================================
" MISC
"=============================================================================

"=======================================
" Disable scrollbars
"=======================================
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"=======================================
" Set font
"=======================================
set gfn=Monospace\ 11

"=============================================================================
" Language config
"=============================================================================

"=======================================
" Markdown
"=======================================
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

"=======================================
" C filetypes
"=======================================
"augroup project
 "   autocmd!
  "  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
"augroup END

"=======================================
" Remember curser position
"=======================================
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

