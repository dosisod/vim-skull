if exists("b:current_syntax")
  finish
endif

syn match skullComment "\v#( .*)?$" contains=skullTodo
syn region skullBlockComment start="#{" end="#}" contains=skullTodo
syn match skullTodo "\(TODO\|FIXME\|HACK\|XXX\)\((.*)\)\?" contained
syn keyword skullConditional if elif else while
syn keyword skullBoolOperator not is isnt and or xor
syn keyword skullOperator mod
syn keyword skullConstant true false
syn keyword skullStatement return unreachable
syn keyword skullType Int Float Rune Str Bool
syn keyword skullModifier mut
syn match skullNumber "\v<([0-9]_?)*[0-9]>"
syn match skullNumberHex "\v<0x([0-9A-Fa-f]_?)*[0-9A-Fa-f]>"
syn match skullNumberBinary "\v<0b([01]_?)*[01]>"
syn match skullNumberOctal "\v<0o([0-7]_?)*[0-7]>"
syn match skullFloat "\<\([0-7]_\?\)*[0-7]\.\d\+\>"
syn keyword skullInfinity Infinity
syn match skullEscape "\v\\[\\etrn0]" contained
syn match skullHexEscape "\\x\x\x" contained
syn match skullQuoteEscape "\v(\\\"|\\\')" contained
syn match skullRune "\v'(\\'|\\\"|.|\\x\x\x|\\[\\ertn0])'" contains=skullEscape,skullHexEscape,skullQuoteEscape
syn region skullString start=+"+ end=+"+ contains=skullEscape,skullHexEscape,skullQuoteEscape
syn keyword skullStorageSpecifier external export

hi link skullComment Comment
hi link skullBlockComment Comment
hi link skullTodo Todo
hi link skullConditional Conditional
hi link skullBoolOperator Conditional
hi link skullOperator Conditional
hi link skullConstant Number
hi link skullStatement Statement
hi link skullType Type
hi link skullModifier PreCondit
hi link skullNumber Number
hi link skullNumberHex Number
hi link skullNumberOctal Number
hi link skullNumberBinary Number
hi link skullFloat Number
hi link skullInfinity Number
hi link skullString String
hi link skullRune String
hi link skullEscape Special
hi link skullHexEscape Special
hi link skullQuoteEscape Special
hi link skullStorageSpecifier StorageClass
