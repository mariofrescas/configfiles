let g:lightline = {
  \ 'active': {
  \   'left': [['mode', 'paste'], [], ['filename', 'modified']],
  \   'right': [['cocstatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
  \ },
  \ 'inactive': {
  \   'left': [['inactive'], ['filename', 'modified']],
  \   'right': [['bufnum']]
  \ },
  \ 'tabline': {
  \   'left': [['tabs']],
  \   'right': [['close']]
  \ },
  \ 'component': {
  \   'bufnum': '%n',
  \   'inactive': 'inactive'
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head',
  \   'cocstatus': 'coc#status'
  \ },
  \ 'colorscheme': 'gruvbox',
  \ 'separator': {
  \   'left': '',
  \   'right': ''
  \ },
  \ 'subseparator': {
  \   'left': '',
  \   'right': ''
  \ }
\}
