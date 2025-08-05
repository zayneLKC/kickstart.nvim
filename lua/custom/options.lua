-- :help options
--vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = 'unnamedplus' -- allows neovim to access the system clipboard
vim.opt.breakindent = true -- Line breaks will continue onto the next line
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { 'menuone', 'noselect' } -- mostly just for cmp. auto-completion options for C-n
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files.  NOTE: play with this

vim.opt.fileencoding = 'utf-8' -- the encoding written to a file. default value.
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.smartcase = true -- smart case when searching
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = 'a' -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height when auto-completing
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs. NOTE: Don't reallt know what this does.

vim.opt.smartindent = true -- make indenting smarter again. e.g. coding and using {}s
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = true -- creates a swapfile (temporary .swp file saving changes)
-- vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- vim.opt.expandtab = true -- convert tabs to spaces NOTE: play with this
--
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines (to the left)
vim.opt.relativenumber = true -- set relative numbered lines above and below current line
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = 'yes' -- always show the sign column, otherwise it would shift the text each time. signcolumn is the error message column
vim.opt.wrap = true -- display lines as one long line
vim.opt.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor
-- vim.opt.sidescrolloff = 8 -- only relevant if wrap is set to false.
vim.opt.guifont = 'monospace:h17' -- the font used in graphical neovim applications
vim.opt.list = true -- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } --specifies the above option
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type (search and replace)

vim.opt.shortmess:append 'c' -- don't notify me when I complete words with C-n.

--#region code folding
-- TODO: Add Tree sitter folding on "documentclass" and "begin{document}" .tex files to navigate preambles faster. Look at :h fold-expr
--  ">1", ">2", ..	a fold with this level starts at this line
--  "<1", "<2", ..	a fold with this level ends at this line
vim.opt.foldcolumn = 'auto' -- display extra information on fold levels
vim.opt.foldmethod = 'expr' -- fold based on expressions
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()' -- let tree sitter tell me what expressions to fold on
vim.opt.foldtext = 'foldtext()' -- function controlling the text displayed at each fold

vim.opt.foldnestmax = 4 -- code won't be broken down into more granular folds than 4 folds.
vim.opt.foldlevel = 99 -- minimum level of a fold that will be closed by default is 99 layers
vim.opt.foldlevelstart = 1 -- upon editing a buffer close folds at this layer
--#endregion
