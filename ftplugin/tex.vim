" Vim filetype plugin file
" Language:    LaTeX
" Maintainer:  hakehash
" URL:         http://github.com/hakehash/vimrc
" Last Change: 01-Sep-2019.

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
setlocal spell

