if exists("b:current_syntax")
  finish
endif

syn match skullComment "#\(\ .*\)\?$"
syn match skullBlockComment "#{\_.*#}"
syn keyword skullConditional if
syn keyword skullConstant true false
syn keyword skullStatement return
syn keyword skullType int float rune str bool type
syn keyword skullModifier mut
syn match skullNumber "\<\-\?\d\+\>"
syn match skullNumberHex "\<0x\x\+\>"
syn match skullNumberOctal "\<0b[01]\+\>"
syn match skullNumberBinary "\<0o\o\+\>"
syn match skullFloat "\<\-\?\d\+\.\d\+\>"
syn keyword skullInfinity Infinity
syn match skullEscape "\\[\\trn]" contained
syn match skullHexEscape "\\x\x\x" contained
syn match skullRune "'\(.\|\\x\x\x\|\\[\\rtn]\)'" contains=skullEscape,skullHexEscape
syn region skullString start="\"" contains=skullEscape,skullHexEscape end="\""
syn keyword skullStorageSpecifier external

hi link skullComment Comment
hi link skullBlockComment Comment
hi link skullConditional Conditional
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
hi link skullStorageSpecifier StorageClass