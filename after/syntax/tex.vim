" Vim syntax file
" Language:    TeX
" Maintainer:  hakehash
" URL:         https://github.com/hakehash
" Last change: 22 Jul 2019.

syntax region texComment start="\\begin{comment}" end="\\end{comment}" fold
highlight link texComment Comment
