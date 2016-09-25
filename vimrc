"
"" ~/.vimrc
"


"
"" Compability {{{
" -----------------------------------------------------------------------------
"  "
  set nocompatible          " use vim defaults instead of vi
  set encoding=utf-8        " always encode in utf
" Required:
  set runtimepath+=/home/biyer/.vim/bundle/neobundle.vim/

" Required:
  call neobundle#begin(expand('/home/biyer/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'AutoComplPop'
  NeoBundle 'vim-airline/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'
  NeoBundle 'christoomey/vim-tmux-navigator'
  NeoBundle 'jlanzarotta/bufexplorer'
  NeoBundle 'rhysd/vim-clang-format'
  NeoBundle 'hynek/vim-python-pep8-indent'
  NeoBundle 'airblade/vim-gitgutter'
" You can specify revision/branch/tag.
  NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
" Creating a custom plugin to map all override settings  
  NeoBundle '~/.vim/settings/', { 'type': 'nosync' }

" Required:
  call neobundle#end()

" Required:
  filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
  NeoBundleCheck
"End NeoBundle Scripts-------------------------

"}}}
"" Settings {{{
" -----------------------------------------------------------------------------
"
"  " File detection
  syntax on
  set background=dark
  colorscheme solarized

	
" 
" " General
  set backspace=2           " enable <BS> for everything
" set colorcolumn=80        " visual indicator of column
  set number	              " Show line numbers
  set completeopt=longest,menuone   " Autocompletion options
  set complete=.,w,b,u,t,i,d        " autocomplete options (:help 'complete')
  set hidden                " hide when switching buffers, don't unload
  set laststatus=2          " always show status line
  set lazyredraw            " don't update screen when executing macros
  set mouse=a               " enable mouse in all modes
  set noshowmode            " don't show mode, since I'm already using airline
  set nowrap                " disable word wrap
  set showbreak="+++ " 	    " String to show with wrap lines
  set number                " show line numbers
  set showcmd               " show command on last line of screen
  set showmatch             " show bracket matches
" set spelllang=es 	        " spell
" set spellfile=~/.vim/spell/es.utf-8.add
  set textwidth=0           " don't break lines after some maximum width
  set ttyfast               " increase chars sent to screen for redrawing
"set ttyscroll=3           " limit lines to scroll to speed up display
  set title                 " use filename in window title
  set wildmenu              " enhanced cmd line completion
  set wildchar=<TAB>	      " key for line completion
  set noerrorbells          " no error sound
  set splitright	          " Split new buffer at right

"
" " Folding
  set foldignore=           " don't ignore anything when folding
  set foldlevelstart=99     " no folds closed on open
  set foldmethod=marker     " collapse code using markers
  set foldnestmax=1         " limit max folds for indent and syntax methods

"
" " Tabs
  set autoindent            " copy indent from previous line
  set expandtab             " replace tabs with spaces
  set shiftwidth=4          " spaces for autoindenting
  set smarttab              " <BS> removes shiftwidth worth of spaces
  set softtabstop=4         " spaces for editing, e.g. <Tab> or <BS>
  set tabstop=4             " spaces for <Tab>

"
" " Searches
  set hlsearch              " highlight search results
  set incsearch             " search whilst typing
  set ignorecase            " case insensitive searching
  set smartcase             " override ignorecase if upper case typed
  set more	                " Stop in list

"
" " Mapping leader here
let mapleader = ","

"
" " Plugin specific settings are placed in the file sourced below
" source ~/.vim/settings/overrides.vim
