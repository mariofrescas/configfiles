" Exit edition
inoremap jk <esc>

" <leader> = f, ff = forward command, FF = backward command
noremap <leader>f f
noremap FF F

" Hold selection when tabbing
vnoremap > >gv
vnoremap < <gv

" Resize splits
nnoremap <leader>> 10<c-w>>
nnoremap <leader>< 10<c-w><

" Tab
nnoremap <a-t> :tabnew<cr>
nnoremap <a-q> :tabclose<cr>
nnoremap <a-h> :tabprevious<cr>
nnoremap <a-l> :tabnext<cr>
nnoremap <a-1> :tabn 1<cr>
nnoremap <a-2> :tabn 2<cr>
nnoremap <a-3> :tabn 3<cr>
nnoremap <a-4> :tabn 4<cr>
nnoremap <a-5> :tabn 5<cr>
nnoremap <a-6> :tabn 6<cr>
nnoremap <a-7> :tabn 7<cr>
nnoremap <a-8> :tabn 8<cr>
nnoremap <a-9> :tabn 9<cr>
