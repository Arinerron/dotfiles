set number
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set background=dark
set clipboard^=unnamed

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

map <Home> ^  
imap <Home> <Esc>^i

" let g:pymcd_powerline="py3"
" let g:powerline_pycmd = 'py3'
" set laststatus=2
" 
" set rtp+=/usr/lib/python3.8/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

syntax on

source $VIMRUNTIME/mswin.vim
"behave mswin

:nmap ; :

let g:airline_theme='minimalist'


" move to beginning of text or line
function ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction
noremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <C-O>:call ExtendedHome()<CR>


:map <Home> ^  
:imap <Home> <Esc>^i

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if exists("$TMUX")
    let &t_RB = "\ePtmux;\e\e]11;?\007\e\\"
endif

set cursorline

" save undo history
set undofile
set undodir=~/.vim/undo/


" plugins
call plug#begin('~/.vim/plugged')
"Plug 'vim-airline/vim-airline'
Plug 'iden3/vim-circom-syntax'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'yggdroot/indentline'  
Plug 'modocache/move.vim'
Plug 'tomlion/vim-solidity'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'navarasu/onedark.nvim'
Plug 'udalov/kotlin-vim'
call plug#end()

" colorscheme
syntax on
"color onedark
colorscheme onedark

" :GitGutterEnable
" :GitGutterSignsEnable
" :GitGutterBufferEnable
set updatetime=100

" fzf.vim
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using Vim function
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" nerdtree keybinding
map <C-n> :NERDTreeToggle<CR>

" split config
" nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" nnoremap <buffer> <nowait> [ (
" nnoremap <buffer> <nowait> ] )
nnoremap - <C-]>

" ctrl+m to run make
"noremap <C-m> :make<BAR>copen<CR>

" colors on TODO etc
augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', '\(entry\|TODO\|FIXME\|XXX\|VULN\|BUG\|WARN\)', -1)
augroup END

" mouse on terminal emulator
set mouse=a
" let g:DiffUnit="Word1"

"map <C-F> /
"for mode in ['n', 'v', 'i', 'c']
"  for key1 in ['<', '<c-', '<s-']
"    for key2 in ['up>', 'down>', 'left>', 'right>']
"      exec mode.'noremap' key1.key2 '<nop>'
"    endfor
"  endfor
"endfor


noremap Y "+y
noremap P "+p

" make j/k act like up/down arrow keys
"
noremap <silent> k gk
noremap <silent> j gj

autocmd BufNewFile,BufRead *.mc set filetype=c



"autocmd BufEnter /home/aaron/zellic/* let b:copilot_enabled = v:false
"autocmd BufReadPre /home/aaron/zellic/* let b:copilot_enabled = v:false
"let g:copilot_filetypes = {
"    \ 'gitcommit': v:true,
"    \ 'markdown': v:true,
"    \ 'yaml': v:true
"    \ }
" autocmd BufReadPre *
"     \ let f=getfsize(expand("<afile>"))
"     \ | if f > 100000 || f == -2
"     \ | let b:copilot_enabled = v:false
"     \ | endif
"
"set nofixendofline


lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "typescript", "lua", "vim", "json", "html", "rust", "tsx", "func"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = { "css", "clojure", "markdown", "latex" }
    },
})
EOF
