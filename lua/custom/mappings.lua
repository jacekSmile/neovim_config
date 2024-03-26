---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

local DsPinyinCompletion = false

M.pinyin = {
  n = {
    ["<leader>zh"] = {
      function()
        if DsPinyinCompletion then
          vim.cmd "DsPinyinCompletionOff"
          DsPinyinCompletion = false
          print("pinyin mode off")
        else
          vim.cmd "DsPinyinCompletionOn"
          DsPinyinCompletion = true
          print("pinyin mode on")
        end
      end,
      "Turn on/off pinyin completion",
    },
  },
}

return M
