vim.cmd [[
  " Try label-mode for a minimalist alternative to EasyMotion
  let g:sneak#label = 1

  " Ignore case-sensitive
  let g:sneak#use_ic_scs = 1

  " Key used
  let g:sneak#target_labels = 'hklyuiopnmqwertzxcvbasdgjf1234567890!@#$%^*()&'
]]

vim.api.nvim_set_keymap('n', '<leader>w', '<Plug>Sneak_s', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', '<Plug>Sneak_S', { noremap = true })

-- Gruvbox colorscheme
vim.cmd [[

  let s:gb = {}

  let s:gb.bright_yellow  = ['#fabd2f', 214]     " 250-189-47
  let s:yellow = s:gb.bright_yellow

  let s:gb.dark0       = ['#282828', 235]     " 40-40-40
  let s:bg0  = s:gb.dark0

  let s:inverse = 'inverse,'

  function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    " foreground
    let fg = a:fg

    " background
    if a:0 >= 1
      let bg = a:1
    else
      let bg = s:none
    endif

    " emphasis
    if a:0 >= 2 && strlen(a:2)
      let emstr = a:2
    else
      let emstr = 'NONE,'
    endif

    " special fallback
    if a:0 >= 3
      if g:gruvbox_guisp_fallback != 'NONE'
        let fg = a:3
      endif

      " bg fallback mode should invert higlighting
      if g:gruvbox_guisp_fallback == 'bg'
        let emstr .= 'inverse,'
      endif
    endif

    let histring = [ 'hi', a:group,
          \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
          \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
          \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
          \ ]

    " special
    if a:0 >= 3
      call add(histring, 'guisp=' . a:3[0])
    endif

    execute join(histring, ' ')
  endfunction

  call s:HL('Search', s:yellow, s:bg0, s:inverse)

  hi! link Sneak Search
  hi! link SneakLabel Search
]]
