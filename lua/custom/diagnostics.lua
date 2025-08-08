-- #region keymaps
-- Toggle diagnostics
local diagnostics_active = true
vim.keymap.set('n', '<leader>td', function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end, { desc = '[t]oggle [d]iagnostics' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [q]uickfix list' })
-- #endregion

-- #region QoL improvements
-- Deduplicate diagnostics per line/message
local orig_handler = vim.lsp.handlers['textDocument/publishDiagnostics']
vim.lsp.handlers['textDocument/publishDiagnostics'] = function(err, result, ctx, config)
  if result and result.diagnostics then
    local seen = {}
    local filtered = {}
    for _, diag in ipairs(result.diagnostics) do
      local key = string.format('%d:%s', diag.range.start.line, diag.message)
      if not seen[key] then
        seen[key] = true
        table.insert(filtered, diag)
      end
    end
    result.diagnostics = filtered
  end
  orig_handler(err, result, ctx, config)
end
-- #endregion
