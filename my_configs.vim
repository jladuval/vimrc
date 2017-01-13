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
command VR vertical resize 120
nnoremap <leader>a :<C-u>Unite -no-split -buffer-name=buffer  -start-insert grep:.<CR>

