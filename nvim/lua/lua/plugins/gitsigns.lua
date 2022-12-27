require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' }
  },

  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', '<leader>hj', function()
      if vim.wo.diff then return '<leader>hk' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '<leader>hk', function()
      if vim.wo.diff then return '<leader>hj' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '<leader>hp', gs.preview_hunk)
    map('n', '<leader>hb', gs.toggle_current_line_blame)
    map('n', '<leader>hd', gs.diffthis)
  end
}
