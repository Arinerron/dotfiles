set number
set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set pastetoggle=<F2>
inoremap <S-Tab> <C-d>

setlocal wrap linebreak nolist
set virtualedit=
setlocal display+=lastline
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>
inoremap jj <Esc>

"" let g:pymcd_powerline="py3"
"" let g:powerline_pycmd = 'py3'
"" set laststatus=2

"" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

syntax on

source $VIMRUNTIME/mswin.vim
behave mswin

:nmap ; :
