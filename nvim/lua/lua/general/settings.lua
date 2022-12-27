-- Globals
vim.g.mapleader = 'f'                                           -- Set leader key

-- Commands
vim.cmd [[colorscheme gruvbox]]                                 -- Selects theme
vim.cmd [[set noshowmode]]                                      -- We don't need to see things like -- INSERT -- anymore
vim.cmd [[set nowrap]]                                          -- Display long lines as just one line

-- Splits
vim.o.splitbelow = true                                         -- Horizontal splits will automatically be below
vim.o.splitright = true                                         -- Vertical splits will automatically be to the right

-- Tabbing
vim.o.smarttab = true                                           -- Makes tabbing smarter will realize you have 2 vs 4
vim.o.smartindent = true                                        -- Makes indenting smart
vim.o.autoindent = true                                         -- Good auto indent
vim.o.expandtab = true                                          -- Uses spaces instead of tabs
vim.o.tabstop = 2                                               -- Number of spaces
vim.o.softtabstop = 2                                           -- Number of spaces
vim.o.shiftwidth = 2                                            -- Number of spaces

-- Line numbers
vim.o.number = true                                             -- Shows line numbers
vim.o.relativenumber = true                                     -- Line numbers are relative

-- Search
vim.o.hlsearch = true                                           -- Highlights all previous search pattern
vim.o.incsearch = true                                          -- Shows search pattern while typing
vim.o.ignorecase = true                                         -- Ignores search patter case
vim.o.smartcase = true                                          -- Until search patter contains an uppercase

-- Whitespace
vim.o.list = true                                               -- Show whitespace
vim.o.listchars = 'tab:»-,trail:~,extends:>,precedes:<,space:·' -- Whitespace characters

-- General
vim.o.clipboard = 'unnamedplus'                                 -- Copy paste between vim and everything else
vim.o.mouse = 'a'                                               -- Enable your mouse
vim.o.timeoutlen = 500                                          -- Faster mapping canceling
vim.o.updatetime = 250                                          -- Decrease update time
vim.o.showtabline = 2                                           -- Always show tabs
vim.o.fileencoding = 'utf-8'                                    -- The encoding written to file
vim.o.showmatch = true                                          -- Highlights bracket match
vim.o.cursorline = true                                         -- Enable highlighting of the current line
vim.o.conceallevel = 0                                          -- So that I can see `` in markdown files
vim.wo.signcolumn = 'yes'                                       -- Always show signcolumn (git, mark, and so on column)
vim.o.termguicolors = true                                      -- Enables 24-bit RGB color
