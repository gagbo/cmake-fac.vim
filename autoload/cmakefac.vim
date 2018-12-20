" Initialisation of CMake-FAC and entry points

let g:cmakefac_client_id = 'cmake-fac.vim'
let g:cmakefac_api_queryfolder = ".cmake/api/v1/query/client-" . g:cmakefac_client_id
let g:cmakefac_query_path = "build/" . g:cmakefac_api_queryfolder . "/query.json"
let s:example_query = {
            \ 'requests': [
            \     { 'kind': '<kind>', 'version': 1 },
            \     { 'kind': '<kind>', 'version': {'major': 1, 'minor': 2} },
            \     { 'kind': '<kind>', 'version': [2, {'major': 1, 'minor': 2}] },
            \     { 'kind': '<kind>', 'version': [2, 1] },
            \ ],
            \ 'client': '',
            \ }

function cmakefac#debuginit() abort
    echom 'cmakefac_client_id : ' . g:cmakefac_client_id
    echom 'cmakefac_api_queryfolder : ' . g:cmakefac_api_queryfolder
    echom 'cmakefac_query_path : ' . g:cmakefac_query_path
    echom 'example query : '
    echo s:example_query
endfunction
