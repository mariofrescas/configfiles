vim.opt.termguicolors = true

require('bufferline').setup {
  options = {
    mode = 'tabs',
    numbers = 'ordinal',
    diagnostics = 'nvim_lsp',
    show_buffer_icons = false
  },
  highlights = {
    fill = {
      bg = '#767676'
    }
  }
}
