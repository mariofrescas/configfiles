lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
    disable = { "scss" }
  }
}

vim.api.nvim_set_hl(0, "@type.qualifier.java", { link = "keyword" })
EOF
