" Vim syntax file
" Language: Diatom

" Keywords
syn keyword diatomKeyword until end if then else elsif in for do return break continue loop def begin and or not require fn is
syn keyword diatomBool true false
syn keyword diatomSelf self
syn keyword diatomBuiltIn print println assert panic unreachable todo
syn keyword diatomType Int Float List String Iter Range Option 

" Operator
syn match diatomOperator '[=\$]'
syn match diatomOperator '<\-'
syn match diatomOperator '::'
syn match diatomIgnore '=='
syn match diatomIgnore '<='
syn match diatomIgnore '>='

" Comment
syn match diatomComment "--.*$"

" Number
syntax match diatomNumber '\v<(([0][Xx][_0-9a-fA-F]+)|([0][Bb][_0-1]+)|([0][Oo][_0-7]+)|([0-9][_0-9]*(\.[_0-9]+)?([Ee][\+\-]{0,1}[0-9_]*)?))'

syn region diatomString start='"' end='"' 
syn region diatomString start='\'' end='\'' 

let b:current_syntax = "diatom"

hi def link diatomComment     Comment
hi def link diatomKeyword     Keyword
hi def link diatomBool        Boolean
hi def link diatomSelf        Constant
hi def link diatomOperator    Special
hi def link diatomHip         Type
hi def link diatomString      String
hi def link diatomNumber      Number
hi def link diatomIgnore      Ignore
hi def link diatomBuiltIn     Identifier
hi def link diatomType        Type
