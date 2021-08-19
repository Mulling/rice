filetype plugin indent on
syntax on

set path+=**

let mapleader=" "

noremap <leader><space> :b#<CR>
noremap <leader>s :setlocal spell!<CR>
noremap <leader>/ :setlocal hlsearch!<CR>

noremap Y y$

tnoremap <esc><esc> <c-\><c-n>

command! -nargs=* T :belowright split | resize 10 | term <args>

map <C-j> :cn<CR>
map <C-k> :cp<CR>

let g:loaded_python3_provider = 0
let g:loaded_python_provider  = 0
let g:netrw_banner = 0
let g:pyindent_disable_parentheses_indenting = 1

set autochdir ignorecase incsearch nowrap smartcase expandtab nohlsearch rnu lazyredraw title smartindent

set sj=-50 tabstop=4 softtabstop=4 shiftwidth=4 fillchars+=vert:┃ shortmess=aoOtT laststatus=1 showtabline=0

set grepprg=grep\ -in\ $*\ /dev/null\ 

aug UsrFiletype
    au!
    au Filetype haskell  setlocal tabstop=2 softtabstop=2 shiftwidth=2
    au Filetype markdown setlocal wrap linebreak
    au Filetype text     setlocal wrap linebreak
    au Filetype c        setlocal complete+=i
    au FIletype c++      setlocal complete+=i
    au FIletype qf       setlocal nonu nornu
aug END

aug UsrBufReadPost
    au!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
aug END

aug UsrTermOpen
    au!
    au TermOpen * setlocal nonu nornu
aug END

set statusline=\ %F\ %h%m%r\%=%-13.(%l,%c%V%)\ %P\ %<

colorscheme based