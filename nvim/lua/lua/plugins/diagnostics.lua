-- Hidde source code diagnostics
vim.diagnostic.config({
  virtual_text = false
})

-- Change diagnostics signs
local signs = { Error = '■', Warn = '■', Hint = '■', Info = '■' }
for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Show diagnostics on hover
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})]]
