" Vim syntax file
" Language:    LS-DYNA
" Maintainer:  hakehash
" URL:         https://github.com/hakehash
" Last change: 07 Jan 2020

syntax region DataCard matchgroup=KeywordCard start="\*.*\>" end="\ze\*" contains=Comment fold
syntax region Comment start="\$" end="$"

highlight link KeywordCard Statement
highlight link DataCard Normal
