-- local fold = require 'custom.fold'

vim.opt_local.textwidth = 80
vim.opt_local.foldmethod = 'expr'
vim.opt_local.foldexpr = 'v:lua.vim.lsp.foldexpr()'
