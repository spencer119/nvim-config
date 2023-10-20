return {
  {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      local format = nls.builtins.formatting
      local diagnostics = nls.builtins.diagnostics
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          --- formatting
          format.stylua,
          format.shfmt,
          format.black,
          format.ocamlformat,
          format.format_r,
          format.beautysh.with({
            filetypes = { "zsh" },
            extra_args = { "-i", "2" },
          }),
          format.sql_formatter,
          format.taplo,
          -- Diagnostics
          diagnostics.zsh,
        },
      }
    end,
  },
}
