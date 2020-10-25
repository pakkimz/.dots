syntax on
syntax sync minlines=256

filetype plugin indent on                               " all in one line

call plug#begin('~/.config/nvim/plugged')
" Plug 'igungor/schellar'
Plug 'vim-syntastic/syntastic', { 'on': 'SyntasticToggleMode' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }      " sudo xbps-install ctags
Plug 'pakkimz/vim-gummybears-colorscheme'
Plug 'sheerun/vim-polyglot'                             " mandatory
Plug 'Raimondi/delimitMate'                             " jump c-g g or just repeat the action
Plug 'preservim/nerdtree'
Plug 'rking/ag.vim'
Plug 'matze/vim-move'
Plug 'yuttie/comfortable-motion.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'romainl/vim-tinyMRU'
" Plug 'henrik/vim-indexed-search'
" Plug 'unblevable/quick-scope'
" Plug 'PeterRincker/vim-searchlight'
" Plug 'jeetsukumaran/vim-buffergator'                    " leader-b for for buffer leader-t for tab
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-ragtag'																	" ctrl-x spaces or enter in html
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'wellle/targets.vim'																" more powerful ci) ...
Plug 'tommcdo/vim-exchange'															" exchange word cxiw,cxx,X,cxc
Plug 'lfilho/cosco.vim'																	" alt+;
" Plug 'AndrewRadev/splitjoin.vim'                        " gS and gJ split and join
" Plug 'Yggdroot/indentLine'															" need expandtab to make it works
" Plug 'ivalkeen/vim-simpledb'
" Plug 'gregsexton/MatchTag'
" Plug 'ap/vim-css-color'
Plug 'justmao945/vim-clang', { 'for': ['c', 'cpp'] }
Plug 'captbaritone/better-indent-support-for-php-with-html', { 'for': 'php' }
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/functions/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/commands/commands.vim
