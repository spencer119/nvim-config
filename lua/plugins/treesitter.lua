return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "ninja",
          "python",
          "rst",
          "toml",
          "latex",
          "json",
          "json5",
          "jsonc",
          "typescript",
          "tsx",
        })
      end
    end,
  },
  {
    "b0o/SchemaStore.nvim",
    lazy = true,
    version = false, -- last release is way too old
    opts = nil,
  },
}
