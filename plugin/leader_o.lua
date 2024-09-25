local F = require 'f'

require 'which-key'.register {
  ['<leader>o'] = { name = 'open', },
  ['<localleader>o'] = { name = 'open.outside', },
  ['<leader>oo'] = { function() F.jump_or_split(Org .. '\\init.org') end, 'open: init.org', mode = { 'n', 'v', }, silent = true, },
  ['<leader>oc'] = { function() F.jump_or_split(StdConfig .. 'init.lua') end, 'open: init.lua', mode = { 'n', 'v', }, silent = true, },
  ['<leader>od'] = { function() F.jump_or_split(Dp) end, 'open: Dp', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>oe'] = { function() F.just_run_silent_nooutput({ 'explorer', F.get_parent(), }) end, 'open.outside: explorer cur', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>ow'] = { function() F.just_run_silent_nooutput({ 'explorer', F.get_cwd(), }) end, 'open.outside: explorer cwd', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>oc'] = { name = 'open.outside.cmd', },
  ['<localleader>occ'] = { function() F.just_run_silent_nooutput({ 'start', '/d', F.get_parent(), 'cmd', }) end, 'open.outside: cmd', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>ocp'] = { function() F.just_run_silent_nooutput({ 'start', '/d', F.get_parent(), 'powershell', }) end, 'open.outside: powershell', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>ocb'] = { function() F.just_run_silent_nooutput({ 'start', '/d', F.get_parent(), 'bash', }) end, 'open.outside: bash', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>oci'] = { function() F.just_run_silent_nooutput({ 'start', '/d', F.get_parent(), 'ipython', }) end, 'open.outside: ipython', mode = { 'n', 'v', }, silent = true, },
  ['<localleader>ocl'] = { function() F.just_run_silent_nooutput({ 'start', '/d', F.get_parent(), 'lazygit', }) end, 'open.outside: lazygit', mode = { 'n', 'v', }, silent = true, },
}
