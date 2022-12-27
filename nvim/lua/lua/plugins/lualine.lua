local gruvbox = require('lualine.themes.gruvbox')

gruvbox.normal.a.bg = gruvbox.command.a.bg
gruvbox.normal.a.fg = gruvbox.command.a.fg

gruvbox.insert.c.bg = gruvbox.normal.c.bg
gruvbox.insert.c.fg = gruvbox.normal.c.fg

gruvbox.visual.c.bg = gruvbox.normal.c.bg
gruvbox.visual.c.fg = gruvbox.normal.c.fg

gruvbox.command.c.bg = gruvbox.normal.c.bg
gruvbox.command.c.fg = gruvbox.normal.c.fg

require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'gruvbox',
    component_separators = '|',
    section_separators = ''
  },
  sections = {
    lualine_b = { },
    lualine_c = { 'filename', 'diff', 'diagnostics' }
  }
}
