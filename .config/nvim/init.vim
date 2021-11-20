syntax on
syntax sync minlines=256

filetype plugin indent on																	" all in one line

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-syntastic/syntastic', { 'on': 'SyntasticToggleMode' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }				" need ctags / npm jsctags
Plug 'pakkimz/vim-gummybears-colorscheme'
Plug 'pakkimz/jellybeans.vim'
Plug 'sheerun/vim-polyglot'																" mandatory
Plug 'Raimondi/delimitMate'                               " C-g g to escape
Plug 'pakkimz/AutoComplPop'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'ryanoasis/vim-devicons'
Plug 'rking/ag.vim'
Plug 'matze/vim-move'
Plug 'yuttie/comfortable-motion.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'nelstrom/vim-visual-star-search'
Plug 'romainl/vim-tinyMRU'
" Plug 'jeetsukumaran/vim-buffergator'                    " leader-b for for buffer leader-t for tab
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'christoomey/vim-titlecase'
Plug 'junegunn/vim-easy-align'
Plug 'tommcdo/vim-exchange'															  " exchange word cxiw,cxx,X,cxc
Plug 'wellle/targets.vim'																  " more powerful ci) ...
Plug 'lfilho/cosco.vim'																	  " alt+;
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-ragtag'																	  " ctrl-x spaces or enter in html
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'                                   " put this on the last
" Plug 'tpope/vim-fugitive'
" Plug 'AndrewRadev/splitjoin.vim'                        " gS and gJ split and join
" Plug 'Yggdroot/indentLine'															" need expandtab to make it works
" Plug 'ivalkeen/vim-simpledb'
" Plug 'gregsexton/MatchTag'
Plug 'ap/vim-css-color'
Plug 'justmao945/vim-clang', { 'for': ['c', 'cpp'] }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern', 'for': 'javascript' }
Plug 'captbaritone/better-indent-support-for-php-with-html', { 'for': 'php' }
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/functions/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/commands/commands.vim
