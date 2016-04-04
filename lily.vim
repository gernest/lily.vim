" Vim syntax file
" Language: lily
" Maintainer: gernest
" Latest Revision: 4 April 2016
"
if exists("b:current_syntax")
   finish
endif

let b:current_syntax="lily:

syn keyword lilyDirective       import
syn keyword lilyDeclaration     var class enum

hi def link lilyDirective       Statement
hi def link lilyDeclaration     Keyword
