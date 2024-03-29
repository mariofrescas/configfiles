require('Comment').setup({
  ---Add a space b/w comment and the line
  padding = true,

  ---Whether the cursor should stay at its position
  sticky = true,

  ---LHS of toggle mappings in NORMAL mode
  toggler = {
      ---Line-comment toggle keymap
      line = '<leader>cl',
      ---Block-comment toggle keymap
      block = '<leader>cb'
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
      ---Line-comment keymap
      line = '<leader>cl',
      ---Block-comment keymap
      block = '<leader>cb'
  },
  ---Enable keybindings
  ---NOTE: If given `false` then the plugin won't create any mappings
  mappings = {
      ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
      basic = true,

      ---Extra mapping; `gco`, `gcO`, `gcA`
      extra = false
  }
})
