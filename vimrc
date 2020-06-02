set nomodeline
set number
set relativenumber
set nohlsearch
set noincsearch
set bg=light
set backspace=2
syntax on
set tabstop=2
set shiftwidth=2
set noexpandtab
set ai
set copyindent
filetype indent on
filetype plugin on
set textwidth=0
set wrapmargin=0
set title
set tags=tags;
set cscopetag
set completeopt=longest,menu

" Restore postion from viminfo
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
autocmd FileType php setlocal comments+=s1:/*,mb:*,ex:*/,://

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestHighlight = 1
let g:is_posix = 1
