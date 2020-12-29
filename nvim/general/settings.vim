" Set leader key
let g:mapleader = "f"

syntax enable                                             " Enables syntax highlighing
filetype plugin on                                        " Enables filetype detection
set t_Co=256                                              " Support 256 colors
colorscheme gruvbox                                       " Selects theme
set hidden                                                " Required to keep multiple buffers open multiple buffers
set nowrap                                                " Display long lines as just one line
set encoding=utf-8                                        " The encoding displayed
set pumheight=10                                          " Makes popup menu smaller
set fileencoding=utf-8                                    " The encoding written to file
set ruler                                                 " Show the cursor position all the time
set iskeyword+=-                                          " treat dash separated words as a word text object
set mouse=a                                               " Enable your mouse
set splitbelow                                            " Horizontal splits will automatically be below
set splitright                                            " Vertical splits will automatically be to the right
set conceallevel=0                                        " So that I can see `` in markdown files
set smarttab                                              " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                                           " Makes indenting smart
set autoindent                                            " Good auto indent
set expandtab                                             " Uses spaces instead of tabs
set tabstop=2                                             " Number of spaces
set softtabstop=2                                         " Number of spaces
set shiftwidth=2                                          " Number of spaces
set hlsearch                                              " Highlights all previous search pattern
set incsearch                                             " Shows search pattern while typing
set ignorecase                                            " Ignores search patter case
set smartcase                                             " Until search patter contains an uppercase
set number                                                " Shows line numbers
set relativenumber                                        " Line numbers are relative
set showmatch                                             " Highlights bracket match
set cursorline                                            " Enable highlighting of the current line
set showtabline=2                                         " Always show tabs
set noshowmode                                            " We don't need to see things like -- INSERT -- anymore
set nobackup                                              " This is recommended by coc
set nowritebackup                                         " This is recommended by coc
set shortmess+=c                                          " This is recommended by coc
set updatetime=300                                        " Faster completion
set timeoutlen=500                                        " By default timeoutlen is 1000 ms
set formatoptions-=cro                                    " Stop newline continution of comments
set clipboard=unnamedplus                                 " Copy paste between vim and everything else
set list                                                  " Show whitespace
set listchars=tab:»-,trail:~,extends:>,precedes:<,space:· " Whitespace characters
