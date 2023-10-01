return {
  {
    "nvim-neorg/neorg",
    enabled = true,
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.export"] = {},
          ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
          ["core.integrations.nvim-cmp"] = {},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                csci400 = "~/notes/csci400",
                csci403 = "~/notes/csci403",
                math307 = "~/notes/math307",
                math201 = "~/notes/math201",
              },
            },
          },
        },
      })
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
