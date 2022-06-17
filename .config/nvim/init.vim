filetype plugin indent on
syntax on

let mapleader=" "

noremap <c-j> :cn<cr>
noremap <c-k> :cp<cr>
noremap <leader>/       :grep<space>
noremap <leader><space> :b#<cr>
noremap <leader>s       :setlocal spell!<cr>
noremap Y y$

xnoremap < <gv
xnoremap > >gv
xnoremap = =gv
xnoremap <leader>/ y:grep <c-r>"<space>

cnoremap <a-b> <c-left>
cnoremap <a-f> <c-right>

tnoremap <esc><esc> <c-\><c-n>

inoremap <c-space> <c-x><c-o>

let g:loaded_python3_provider = 0
let g:loaded_python_provider  = 0
let g:netrw_banner = 0
let g:pyindent_disable_parentheses_indenting = 1

set autochdir expandtab ignorecase incsearch lazyredraw nohlsearch nowrap rnu smartcase smartindent title

set clipboard+=unnamedplus complete+=t completeopt=menu fillchars+=vert:\| grepprg=grep\ -rin\ $*\ /dev/null\  laststatus=1 path+=** shiftwidth=4 shortmess=aoOtT showtabline=0 sj=-50 softtabstop=4 tabstop=4

aug UsrFiletype
    au!
    au Filetype haskell  setlocal tabstop=2 softtabstop=2 shiftwidth=2
    au Filetype markdown setlocal wrap linebreak
    au Filetype text     setlocal wrap linebreak
    au Filetype c        setlocal complete+=i
    au FIletype cpp      setlocal complete+=i
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

aug UsrSearch
    au!
    au CmdlineEnter /,\? set hlsearch
    au CmdlineLeave /,\? set nohlsearch
aug END

set statusline=\ %F\ %h%m%r\%=%-13.(%l,%c%V%)\ %P\ %<

colorscheme based
