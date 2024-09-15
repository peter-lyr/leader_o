local F = require 'f'

require 'which-key'.add {
  { '<leader>o',  group = 'open', },
  { '<leader>oo', function() F.jump_or_split(Org .. '\\init.org') end,    desc = 'open init.org', mode = { 'n', 'v', }, },
  { '<leader>oc', function() F.jump_or_split(Config .. '\\init.lua') end, desc = 'open init.lua', mode = { 'n', 'v', }, },
}
