" Vim filetype plugin file
" Language:    LaTeX
" Maintainer:  hakehash
" URL:         http://github.com/hakehash/vimrc
" Last Change: 29-Jan-2020.

inoremap <buffer> $ $$<LEFT>
if has('syntax') && has('eval')
  packadd matchit
endif
setlocal foldmethod=syntax
setlocal nolinebreak
if !filereadable('Makefile') && executable('ptex2pdf')
  if getline(1) =~ "uplatex"
    setlocal makeprg=ptex2pdf\ -l\ -u\ -ot\ '-halt-on-error\ -interaction=nonstopmode\ -file-line-error'\ %
  else
    setlocal makeprg=ptex2pdf\ -l\ -ot\ '-halt-on-error\ -interaction=nonstopmode\ -file-line-error'\ %
  endif
endif
if getline(1) =~ "beamer"
  inoremap <buffer> < <><LEFT>
  setlocal matchpairs+=<:>
endif
setlocal spell

