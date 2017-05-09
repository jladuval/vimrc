set nofen
set splitright
set splitbelow
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" " when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab
set relativenumber 
set number   
set timeoutlen=1000 ttimeoutlen=0

command VR vertical resize 120
nnoremap <leader>a :<C-u>Unite -buffer-name=search -start-insert grep:.<CR>
nnoremap <leader>t :FZF<CR>
set rtp+=/usr/local/opt/fzf
nnoremap <leader>cd :cd %:p:h<CR>

nnoremap <leader>f :noh<CR>

" Let's use pt
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
      \ '-i --vimgrep --hidden --nocolor --nogroup
      \ --ignore ''bower_components'' --ignore ''.svn'' --ignore ''.git'' --ignore ''node_modules'''
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_encoding = 'utf-8'

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  " Reload directory contents
  imap <buffer> <C-r>   <Plug>(unite_redraw)
endfunction

