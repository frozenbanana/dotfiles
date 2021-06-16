let g:rg_command = 'rg --vimgrep -S'
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Crtl p to start searching away
nnoremap <silent> <A-p> :Rg<CR>
