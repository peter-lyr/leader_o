local F = require 'f'

require 'which-key'.add {
  { '<leader>o',  group = 'open', },
  { '<leader>oj', function() F.jump_or_split(Org) end, desc = 'open', mode = { 'n', 'v', }, },
}
