return {
  "folke/which-key.nvim",
  opts = function()
    require("which-key").register({
      n = {
        name = "config",
        c = { ":tabnew ~/.config/nvim/lua<cr> <bar> :Telescope find_files<cr>", "Edit config" },
        g = { ":tabnew ~/.config/nvim/lua<cr> <bar> :Telescope live_grep<cr>", "Grep config" },
      },
      N = { "<cmd>NullLsInfo<cr>", "Null-ls" },
      M = { "<cmd>Mason<cr>", "Mason" },
      -- r = {
      -- name = "Run code",
      -- r = { "<cmd>RunCode<cr>", "Run code with defaults" },
      -- l = { "<cmd>LLPStartPreview<cr>" },
      -- },
    }, { prefix = "<leader>" })
  end,
}
-- c = { "<cmd>cd ~/.config/nvim<cr> <bar> :edit lua<cr> <bar> :lua", "Edit config" },
