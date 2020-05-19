syntax enable

"THEME
set termguicolors
let g:sonokai_style='shusia'
let g:sonokai_transparent_background=0
colorscheme sonokai

let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-coloresque')
execute pathogen#infect()

"TAB
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set number
set showcmd
set cursorline
set title
set titlestring=%t%(\ (\ %{expand(\"%:p:h\")}\ )%)%(\ %a%)\ -\ [%{$USER}@%{hostname()}]
set titleold=					" reset title when exiting vim"
set novisualbell
set noerrorbells
set showmatch					" highlight matching [{()}]
"set lazyredraw					" redraw only when we need to.
let g:netrw_dirhistmax = 0		" prevent writing to netrw

set undofile					" maintain undo history between sessions
set undodir=~/.vim/tmp			" where undo history is maintained

if has("autocmd")				" return to last known cursor position
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"AUTOCOMPLETE
set wildmode=longest:full,longest
set wildmenu					" visual autocomplete for command menu

"SEARCH
set incsearch					" search as characters are entered
set hlsearch					" highlight matches
set ignorecase
set smartcase					" ignore case if search pattern is all lowercase
nnoremap <F12> :noh<CR>			" no highlight

"FOLD
"filetype indent on				" load filetype-specific indent files
set foldenable					" enable folding
set foldmethod=indent			" fold automatically based on indent
set foldlevelstart=3			" fold to n level
set foldnestmax=4
nnoremap <space> za				" space open/closes folds

"NERDTREE
map <F1> :NERDTreeToggle<CR>

"AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_section_y=''

let g:airline_theme = 'sonokai'

"SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u2757"

"GITGUTTER
let g:gitgutter_max_signs = 250	" default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1	" default value (otherwise)

"GOYO
let g:goyo_width = 80				" default: 80
let g:goyo_height = 80				" default: 85%
let g:goyo_linenr = 0				" default: 0
