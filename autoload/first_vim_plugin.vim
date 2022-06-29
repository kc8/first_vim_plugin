let s:listchar_opts = {
        \ 'eol': '↲',
        \ 'tab': '>',
        \ 'space': '',
        \ 'trail': '-',
        \ 'extends': '',
        \ 'precedes': '',    
        \ 'conceal': '',
        \ 'nbsp': '+',
        \ }

function! first_vim_plugin#update_listchars() abort
    let listchar_mapped = join(map(
        \ items(filter(s:listchar_opts, {k, v -> v != ''})),
        \ { index, key -> printf("%s:%s", key[0], key[1])}
        \ ), ',')

    let &listchars = listchar_mapped
    echo &listchars 
    echo listchar_mapped
endfunction

function! first_vim_plugin#first_function() 
    call first_vim_plugin#update_listchars()
endfunction 

nnoremap <Plug>firstFunction : call first_vim_plugin#first_function()<CR>
call first_vim_plugin#update_listchars()

