syntax enable

"Theme
set termguicolors
let g:sonokai_style='shusia'	"Available values: 'shusia', 'andromeda', 'atlantis', 'maia'
let g:sonokai_transparent_background=0
colorscheme sonokai

execute pathogen#infect()

set tabstop=4
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
filetype indent off				" load filetype-specific indent files
set showmatch					" highlight matching [{()}]
"set lazyredraw					" redraw only when we need to.
let g:netrw_dirhistmax = 0		" prevent writing to netrw

set undofile					" maintain undo history between sessions
set undodir=~/.vim/tmp			" where undo history is maintained

set wildmode=longest:full,longest
set wildmenu					" visual autocomplete for command menu

if has("autocmd")				" return to last known cursor position
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

cnoreabbrev wq write\|BDQ			" rewrite wq
cnoreabbrev q BDQ				" rewrite q
command! -nargs=0 BDQ bd|q 		" closes buffer before quit

"SEARCH
set incsearch					" search as characters are entered
set hlsearch					" highlight matches
set smartcase					" ignore case if search pattern is all lowercase
nnoremap <F2> :noh<CR>			" no highlight

"FOLD
set foldenable					" enable folding
set foldmethod=manual			" fold manually
set foldlevelstart=10			" open most folds by default
set foldnestmax=10
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
let g:goyo_width = 100				" default: 80
let g:goyo_height = 85				" default: 85%
let g:goyo_linenr = 0				" default: 0
