nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Make C-space also me the leader for window commands (like my tmux)

" nnoremap <C-J> :wincmd j<CR>
" nnoremap <C-K> :wincmd k<CR>
" nnoremap <C-L> :wincmd l<CR>
" nnoremap <C-H> :wincmd h<CR>

" Commenting
let s:comment_map = { 
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "scala": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "ruby": '#',
    \   "rust": '\/\/',
    \   "sh": '#',
    \   "desktop": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "mail": '>',
    \   "eml": '>',
    \   "bat": 'REM',
    \   "ahk": ';',
    \   "vim": '"',
    \   "tex": '%',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
        if getline('.') =~ "^\\s*" . comment_leader . " " 
            " Uncomment the line
            execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
        else 
            if getline('.') =~ "^\\s*" . comment_leader
                " Uncomment the line
                execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
            else
                " Comment the line
                execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
            end
        end
    else
        echo "No comment leader found for filetype"
    end
endfunction


" using iterm shortcut to send :call ToggleComment()\n by typing ctrl+/

" Better replace
" I have a keybinding in my init.vim that will allow me to search for a pattern with the usual / character, page through them as normal with n and N , but when I press <C-R> it will populate the replace command for me so that all I need to do is type out the new text.
nnoremap <c-r> :%s/<C-R>///g<Left><Left>


" Buffer splits
cabbrev vsb vert sb
