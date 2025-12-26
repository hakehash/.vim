setlocal noexpandtab
if has('folding')
  setlocal foldcolumn=3
  setlocal foldexpr=PlnFold(v:lnum)
  setlocal foldmethod=expr
  setlocal foldnestmax=2
  setlocal foldtext=getline(v:foldstart)
endif
setlocal tabstop=4
setlocal shiftwidth=0
setlocal softtabstop=-1

function! PlnFold(lnum)
  let line = getline(a:lnum)
  let next = getline(a:lnum+1)
  if a:lnum == 1
    return 0
  elseif line =~ '^\s*\h'
    return '>1'
  elseif next =~ '^\s*\h'
    return '<1'
  elseif line =~ '^\s*\d\+\s\+\h'
    return '>2'
  elseif next =~ '^\s*\d\+\s\+\h'
    return '<2'
  elseif line =~ '^\s*\(\d\|\.\)\+\s\+\(\d\|\.\)\+\s\+\(\d\|\.\)\+\s*$'
    return '2'
  endif
  return '='
endfunction
