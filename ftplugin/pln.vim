setlocal noexpandtab
if has('folding')
  setlocal foldcolumn=4
  setlocal foldexpr=PlnFold(v:lnum)
  setlocal foldmethod=expr
  setlocal foldnestmax=3
  setlocal foldtext=getline(v:foldstart)
endif
setlocal tabstop=4
setlocal shiftwidth=0
setlocal softtabstop=-1

function! PlnFold(lnum)
  let line = getline(a:lnum)
  let next = getline(a:lnum+1)
  if a:lnum == 1
    return '>1'
  elseif line =~ '^\s*\D'
    return '>2'
  elseif next =~ '^\s*\D'
    return '<2'
  elseif line =~ '^\s*\d*\s\D'
    return '>3'
  elseif next =~ '^\s*\d*\s\D'
    return '<3'
  endif
  return '='
endfunction
