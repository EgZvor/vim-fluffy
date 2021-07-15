if exists('g:autoloaded_fluffy')
    finish
endif
let g:autoloaded_fluffy = 1

function s:is_cmd_type_search()
    return getcmdtype() =~# '^/\|^?'
endfunction

function fluffy#space()
    if g:fluffy_enabled && s:is_cmd_type_search()
        return '.\{-}'
    else
        return ' '
    endif
endfunction

function s:fluffy_cmd_line(cmd)
    if s:is_cmd_type_search()
        return substitute(a:cmd, ' \+', '.\\{-}', 'g')
    else
        return a:cmd
    endif
endfunction

function s:remove_vim_regex(cmd)
    return substitute(a:cmd, '\.\\{-}', ' ', 'g')
endfunction

function s:unfluffy_cmd_line(cmd)
    if s:is_cmd_type_search()
        return s:remove_vim_regex(a:cmd)
    else
        return a:cmd
    endif
endfunction

function fluffy#toggle()
    let cmd = getcmdline()
    if g:fluffy_enabled
        let g:fluffy_enabled = 0
        return s:unfluffy_cmd_line(cmd)
    else
        let g:fluffy_enabled = 1
        return s:fluffy_cmd_line(cmd)
    endif
endfunction
