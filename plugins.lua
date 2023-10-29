local plugins = {
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null"
        end,
      },
    },
},
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require("custom.configs.treesitter"),
  },
    {
    "williamboman/mason.nvim",
    opts = require("custom.configs.mason"),
    dependencies = {
      {"williamboman/mason-lspconfig.nvim",
      config = function ()
          require("mason-lspconfig").setup()
      end}
    }
  },
    {
    "nvim-tree/nvim-tree.lua",
    opts = require("custom.configs.tree"),
  },
}
return plugins
