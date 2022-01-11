call plug#begin(stdpath('config'))
  " File
  Plug 'dyng/ctrlsf.vim'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'vim-ctrlspace/vim-ctrlspace'

  " Gui
  Plug 'tpope/vim-fugitive'
  Plug 'kshenoy/vim-signature'
  Plug 'itchyny/lightline.vim'
  Plug 'ryanoasis/vim-devicons'

  " Visual-Editor
  Plug 'ap/vim-css-color'
  Plug 'yggdroot/indentline'
  Plug 'airblade/vim-gitgutter'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " Editor
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Navigation
  Plug 'easymotion/vim-easymotion'
  Plug 'christoomey/vim-tmux-navigator'

  " Themes
  Plug 'morhetz/gruvbox'
  Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()
