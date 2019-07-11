" Vim filetype plugin file
" Language:     LaTeX
" Maintainer:   hakehash
" URL:          http://github.com/hakehash/vimrc
" Last Change:  11-Jul-2019.

inoremap <buffer> $ $$<LEFT>
if has('syntax') && has('eval')
  packadd matchit
endif
setlocal foldmethod=syntax
setlocal nolinebreak
if !filereadable('Makefile') && executable('ptex2pdf')
  if getline(1) =~ "uplatex"
    setlocal makeprg=ptex2pdf\ -l\ -u\ %
  else
    setlocal makeprg=ptex2pdf\ -l\ %
  endif
endif

