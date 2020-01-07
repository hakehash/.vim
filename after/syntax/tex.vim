" Vim syntax file
" Language:    TeX
" Maintainer:  hakehash
" URL:         https://github.com/hakehash
" Last change: 07 Jan 2020.

syntax region texComment matchgroup=texSection start="\\begin{comment}" end="\\end{comment}" fold
highlight link texComment Comment
