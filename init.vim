if has("win64") || has("win32") || has("win16")
  echo "Windows"
else
  echo substitute(system('uname'), '\n', '', '')
endif

source $HOME/.config/nvim/plug-manager.vim
"source $HOME/.config/nvim/plug-config/coc.vim"

let mapleader=" "
nnoremap <Leader>v :e $MYVIMRC<cr>

colo zellner
syntax enable
"indent/tabbing quality of life
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
"enables mouse
set mouse=a
"disables word wrapping
set nowrap
"dont remember but something with clipboard
set clipboard=unnamed
"Disables CTRL Z => CTRL + Z crashes terminal"
nnoremap <c-z> <nop>
"Enabled numbered lines"
:set number relativenumber
:set nu rnu
"Makes so h and l goes to new line when at end of line"
set whichwrap+=h,l

"normal -> input mode stops from going 1 left"
inoremap <silent> <Esc> <C-O>:stopinsert<CR>

"faster navigation
noremap Ö 5l
noremap <S-l> 5k
noremap <S-k> 5j
noremap <S-j> 5h

"for ergonomic reasons
noremap ö l
noremap l k
noremap k j
noremap j h

"quality of life makes it so h and H adds new lines and makes it so if in
"visual line mode that v exits without having to press it twice
noremap h o<Esc>0D
noremap <S-h> O<Esc>0D
xnoremap v <Esc>

"Indention handling
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"from vim-commentary plugin this literally just makes it so CTRL + k toggles
"comment
nmap <C-k> gcc
vmap <C-k> gc

"for code completion
set completeopt+=menuone

set noshowmatch
hi MatchParen cterm=none ctermbg=none ctermfg=blue
