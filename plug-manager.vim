call plug#begin('~/AppData/Local/nvim/plugged')

  "emmet-ish html thingy
  Plug 'alvan/vim-closetag'
  "vscode line commenting
  Plug 'tpope/vim-commentary'

  "Code completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  "Color matched brackets"
  Plug 'frazrepo/vim-rainbow'

call plug#end()

"Plug 'sheerun/vim-polyglot'
"Plug 'vim-syntastic/syntastic'
