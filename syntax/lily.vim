" Vim syntax file
" Language: lily
" Maintainer: gernest
" Latest Revision: 4 April 2016
"
if exists("b:current_syntax")
   finish
endif


syn keyword lilyDirective       import
syn keyword lilyDeclaration     var class enum define

hi def link lilyDirective       Statement
hi def link lilyDeclaration     Keyword

" Lily keywords within functions
syn keyword lilyStatement      return
syn keyword lilyConditional    if else elseif try except match
syn keyword lilyRepeat         for in do while
syn keyword lilyLabel          case

hi def link lilyStatement          Statement
hi def link lilyConditional        Conditional
hi def link lilyRepeat             Repeat
hi def link lilyLabel              Label

" Predefined types
syn keyword lilyType   Boolean Hash String List Integer ByteString Function
          \Tuple Tainted Option 

syn keyword lilyDouble  Double

hi def link  lilyType lilyType

" Predefined functions and values
syn match lilyBuiltins  /\<\v(print|calltrace)\ze\(/
syn keyword lilyBoolean true false

hi def link lilyBuiltins Keyword
hi def link lilyBoolean Boolean

" Comments
syn region lilyComment  start="#" end="$"

hi def link lilyComment Comment

" Block
syn region lilyBlock start="{" end="}" transparent fold
syn region lilyParen start='(' end=')' transparent

let b:current_syntax = "lily"
