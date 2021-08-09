let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'filename': 'LightlineFilename'
      \ },
    \ }

set background=dark


function! LightlineFilename()
  "" Use once starting to use vim-fugitive
  " let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h') " For now this is ok
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
