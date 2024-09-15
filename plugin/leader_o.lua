local F = require 'f'

require 'which-key'.add {
  { '<leader>o',  group = 'open', },
  { '<leader>oi', function() F.jump_or_split(Org .. '\\init.org') end, desc = 'open', mode = { 'n', 'v', }, },
}
