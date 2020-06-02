set belloff=all
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

let g:ale_completion_enabled = 1
let g:ale_lint_delay = 50
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 1
let g:ale_open_list = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_column_always = 1

highlight ALEError ctermfg=Black ctermbg=Red

noremap <silent> <LocalLeader>t :ALEHover<CR>
noremap <silent> <C-]> :ALEGoToDefinition<CR>

" Restore postion from viminfo
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
autocmd FileType php setlocal comments+=s1:/*,mb:*,ex:*/,://

let g:is_posix = 1
