-- vimwiki.lua config

local g = vim.g
local cmd = vim.cmd

g.vimwiki_list = {
  {
    path = '~/.vimwiki/',
    syntax = 'default',
    ext = '.wiki',
  }
}

g.vimwiki_global_ext = 0