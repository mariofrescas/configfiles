require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } }
}

-- Java: public/private/... highlight as keywords
vim.api.nvim_set_hl(0, "@type.qualifier.java", { link = "keyword" })
