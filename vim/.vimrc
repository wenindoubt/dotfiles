execute pathogen#infect()

colorscheme wombat		" wombat colorscheme
syntax enable			" enable syntax processing
set visualbell			" use visual bell (no beeping when erroring out)
set ruler				" show row and column ruler information
set spell				" enable spell-checking

"----- Spaces and Tabs
set tabstop=4			" number of visual spaces per tab
set shiftwidth=4		" size of an indent

"----- UI Config
set number				" show line numbers
set showcmd				" show command in bottom bar
set cursorline			" highlight current line
filetype indent on		" load filetype-specific indent files
set wildmenu			" visual autocomplete for command menu
set showmatch			" highlight matching [{()}]

"----- Searching
set incsearch			" search as characters are entered
set hlsearch			" highlight matches
set smartcase			" enable smart-case search
set ignorecase			" always case-insensitive

"----- Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}

"----- NERDTree
" Open NERDTree automatically when vim starts up with no specified file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Map NERDTree to Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Close vim if the only window opened is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
