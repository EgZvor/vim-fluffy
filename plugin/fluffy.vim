if exists('g:loaded_fluffy')
    finish
endif
let g:loaded_fluffy = 1

if ! exists('g:fluffy_enabled')
    let g:fluffy_enabled = 1
endif

cnoremap <expr> <plug>(fluffy-space) fluffy#space()
cnoremap <plug>(fluffy-toggle) <c-\>efluffy#toggle()<cr>
