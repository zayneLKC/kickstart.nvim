local ls = require 'luasnip'
local t = ls.text_node
local s = ls.snippet

return {
  -- Expands "hi" to "Hello, world!"
  s('hi', { t 'Hello, world!' }),

  -- Expands "foo" to "Another snippet."
  s('foo', { t 'Another snippet.' }),
}
