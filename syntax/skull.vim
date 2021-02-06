if exists("b:current_syntax")
  finish
endif

syn match skullComment "#\(\ .*\)\?$"
syn match skullBlockComment "#{\_.*#}"
syn keyword skullConditional if elif else while
syn keyword skullBoolOperator not is isnt and or xor
syn keyword skullOperator mod
syn keyword skullConstant true false
syn keyword skullStatement return
syn keyword skullType int float rune str bool
syn keyword skullModifier mut
syn match skullNumber "\<\-\?\d\+\>"
syn match skullNumberHex "\<0x\x\+\>"
syn match skullNumberOctal "\<0b[01]\+\>"
syn match skullNumberBinary "\<0o\o\+\>"
syn match skullFloat "\<\-\?\d\+\.\d\+\>"
syn keyword skullInfinity Infinity
syn match skullEscape "\\[\\etrn0]" contained
syn match skullHexEscape "\\x\x\x" contained
syn match skullQuoteEscape "\(\\\"\|\\\'\)" contained
syn match skullRune "'\(\\'\|\\\"\|.\|\\x\x\x\|\\[\\ertn0]\)'" contains=skullEscape,skullHexEscape,skullQuoteEscape
syn region skullString start=+"+ end=+"+ contains=skullEscape,skullHexEscape,skullQuoteEscape
syn keyword skullStorageSpecifier external export

hi link skullComment Comment
hi link skullBlockComment Comment
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
