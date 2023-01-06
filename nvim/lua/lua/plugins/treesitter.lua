require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } }
}

-- Java: public/private/... highlight as keywords
vim.api.nvim_set_hl(0, "@type.qualifier.java", { link = "keyword" })

-- Enable treesitter folding
vim.cmd [[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
  set nofoldenable
]]
