return {
  {
    "williamboman/mason.nvim",
    opts = {
      -- ensure_installed = {
      --   "stylua",
      --   "shfmt",
      --   "clangd",
      -- },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "bashls",
          "clangd",
          "cmake",
          "cssls",
          "cssmodules_ls",
          "dockerls",
          "docker_compose_language_service",
        },
      })
    end,
  },
}
