let g:renderstatus = 'false'
function! RenderSpace()
	if g:renderstatus == 'false'
		let g:renderstatus = 'true'
		set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
		set list
	else
		let g:renderstatus = 'false'
		set list!
	endif
endfunction

augroup RenderSpace
	exec ":call RenderSpace()"
augroup END
