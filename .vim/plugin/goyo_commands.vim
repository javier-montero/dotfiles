" start md files in goyo mode
autocmd BufRead,BufNewFile *.md :Goyo

" ensure :q quits when goyo is active
function! s:goyo_enter()
	set shortmess=F
	set noshowmode
	set noshowcmd
	set noruler
	set scrolloff=999
	set laststatus=0
	set cmdheight=1
	let b:quitting = 0
	let b:quitting_bang = 0
	autocmd QuitPre <buffer> let b:quitting = 1
	cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
	set showmode
	set showcmd
	set ruler
	set scrolloff=5
	if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
		if b:quitting_bang
			qa!
		else
			qa
		endif
	endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
