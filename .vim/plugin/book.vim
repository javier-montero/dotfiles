command -nargs=? Book call OpenBook(<f-args>)

function! OpenBook(...)
	let filename = "/home/javier/.book/"
	if a:0 == 1
		let filename .= a:1 . ".md"
	else
		let filename .= "scratch.md"
	endif
	execute "sp " . fnameescape(filename)
endfunction
