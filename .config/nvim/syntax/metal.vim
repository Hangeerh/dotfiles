if exists("b:current_syntax")
    finish
endif

runtime ! syntax/cpp.vim

" Metal-specific keywords
 syn keyword metalType      texture1d texture2d texture3d sampler
 syn keyword metalStorage   device constant threadgroup thread
 syn keyword metalBuiltin   vertex fragment kernel

" Highlight groups
 hi def link metalType Type
 hi def link metalStorage StorageClass
 hi def link metalBuiltin Keyword

 let b:current_syntax = "metal"
