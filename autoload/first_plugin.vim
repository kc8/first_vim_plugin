"let s:DEBUG = v:false
let s:listchar_opts = {
    \ 'eol': '',
    \ 'tab': '>', 
    \ 'space': '_',
    \ 'trail': '-',
    \ 'extends': '',
    \ 'precedes': '',
    \ 'conceal': '',
    \ 'nbsp': '+',
    \ }

function! first_plugin#update_listchars() abort
    echo 'called'
    let listchar_mapped = join(map(
    \ items(filter(s:listchar_opts, {k, v -> v != ''})),
    \ { index, key -> printf("%s:%s", key[0], key[1])}
    \ ), ',')
    "if s:DEBUG
        "echo 'list chars mapped and joined: '
        "echo listchar_joined 
    "endif 
    let &lcs = listchar_mapped
    echo &lcs
    echo listchar_mapped
endfunction

function! first_plugin#first_function() 
    call first_plugin#update_listchars()
endfunction 

nnoremap <Plug>firstFunction : call first_plugin#first_function()<CR>
call first_plugin#update_listchars()

