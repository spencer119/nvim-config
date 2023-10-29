---@type MappingsTable
local M = {}
M.general = {
  n = {
    ["<leader>qq"] = {"<cmd>qa<cr>", "Quit all"},
    ["<leader>e"] = {"<cmd>NvimTreeToggle<cr>", "Toggle file tree"},
  }
}
return M
