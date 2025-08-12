-- in lua/folds.lua
local M = {}

local comment_map = {
  r = '#',
  python = '#',
  julia = '#',
  lua = '--',
  tex = '%',
  latex = '%',
}

M.comment_map = comment_map

-- Fold on comment lines ending in ----
function M.custom_foldexpr()
  local line = vim.fn.getline(vim.v.lnum)
  local filetype = vim.bo.filetype
  local comment = comment_map[filetype]
  if not comment then
    return '='
  end

  -- Trim whitespace and check if line ends with ----
  local pattern = vim.pesc(comment) .. '.*----%s*$'

  if line:match(pattern) then
    local next_line = vim.fn.getline(vim.v.lnum + 1)
    if next_line:match(pattern) then
      return '<1' -- fold ends
    else
      return '>1' -- fold starts
    end
  end

  return '=' -- return no fold.
end

M.custom_foldtext = function()
  local line = vim.fn.getline(vim.v.foldstart)
  return line:gsub('%s*----%s*$', ''):gsub('^%s*', '')
end

return M
