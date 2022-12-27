nnoremap <silent><c-p> :CtrlSpace O<cr>
let g:CtrlSpaceDefaultMappingKey = "<c-space> "

" Explanation: https://github.com/vim-ctrlspace/vim-ctrlspace/issues/190
if executable('rg')
  let g:CtrlSpaceGlobCommand = 'rg --color=never --files'
elseif executable('fd')
  let g:CtrlSpaceGlobCommand = 'fd --type=file --color=never'
elseif executable('ag')
  let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
