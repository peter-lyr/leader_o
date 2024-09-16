local F = require 'f'

require 'which-key'.register {
  ['<leader>o'] = { name = 'open', },
  ['<leader>oo'] = { function() F.jump_or_split(Org .. '\\init.org') end, 'open: init.org', mode = { 'n', 'v', }, silent = true, },
  ['<leader>oc'] = { function() F.jump_or_split(StdConfig .. 'init.lua') end, 'open: init.org', mode = { 'n', 'v', }, silent = true, },
  ['<leader>od'] = { function() F.jump_or_split(Dp) end, 'open: Dp', mode = { 'n', 'v', }, silent = true, },
}
