local F = require 'f'

require 'which-key'.register {
  ['<leader>o'] = { name = 'open', },
  ['<localleader>o'] = { name = 'open.outside', },
  -- ['<leader>oo'] = { function() F.jump_or_split(Note .. '\\init.org') end, 'open: init.org', mode = { 'n', 'v', }, silent = true, },
  ['<leader>ow'] = { function() F.jump_or_split(Note .. '\\work.org') end, 'open: work.org', mode = { 'n', 'v', }, silent = true, },
  -- ['<leader>ow'] = { function() F.jump_or_split(Note .. '\\work.md') end, 'open: work.md', mode = { 'n', 'v', }, silent = true, },
  ['<leader>os'] = { function() F.jump_or_split(Note .. '\\work_summary.org') end, 'open: work_summary.org', mode = { 'n', 'v', }, silent = true, },
  ['<leader>oc'] = { function() F.jump_or_split(StdConfig .. 'init.lua') end, 'open: init.lua', mode = { 'n', 'v', }, silent = true, },
  ['<leader>od'] = { function() F.jump_or_split(Dp) end, 'open: Dp', mode = { 'n', 'v', }, silent = true, },
  ['<leader>op'] = { function() F.jump_or_split(vim.fn.getreg '+') end, 'open: clipboard', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>oc'] = { name = 'open.outside.cmd', },
  ['<localleader>occ'] = { function() F.just_run_silent_nooutput { 'start', '/d', F.get_parent(), 'cmd', } end, 'open.outside: cmd', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>ocp'] = { function() F.just_run_silent_nooutput { 'start', '/d', F.get_parent(), 'powershell', } end, 'open.outside: powershell', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>ocb'] = { function() F.just_run_silent_nooutput { 'start', '/d', F.get_parent(), 'bash', } end, 'open.outside: bash', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>oci'] = { function() F.just_run_silent_nooutput { 'start', '/d', F.get_parent(), 'ipython', } end, 'open.outside: ipython', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>ocl'] = { function() F.just_run_silent_nooutput { 'start', '/d', F.get_parent(), 'lazygit', } end, 'open.outside: lazygit', mode = { 'n', 'v', }, silent = true, },

  ['<leader>o<leader>'] = { name = 'open.more', },
  ['<leader>o<leader>a'] = { function() F.jump_or_split(DpTemp .. '\\a.txt') end, 'open: a.txt', mode = { 'n', 'v', }, silent = true, },
  ['<leader>o<leader>b'] = { function() F.jump_or_split(DpTemp .. '\\b.txt') end, 'open: b.txt', mode = { 'n', 'v', }, silent = true, },
  ['<leader>o<leader>c'] = { function() F.run__silent(F.format('Bcomp %s %s', DpTemp .. '\\a.txt', DpTemp .. '\\b.txt')) end, 'open: b.txt', mode = { 'n', 'v', }, silent = true, },
}
