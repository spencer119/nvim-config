return {
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      {
        "dhruvmanila/browser-bookmarks.nvim",
        config = function()
          require("telescope").load_extension("bookmarks")
        end,
        opts = {
          selected_browser = "chrome_beta",
        },
      },
      {
        "ghassan0/telescope-glyph.nvim",
        config = function()
          require("telescope").load_extension("glyph")
        end,
      },
    },
    opts = {
      defaults = {
        layout_strategy = "flex",
      },
      extensions = {
        bookmarks = {
          selected_browser = "chrome_beta",
        },
        glyph = {
          action = function(glyph)
            -- argument glyph is a table.
            -- {name="", value="", category="", description=""}

            vim.fn.setreg("+", glyph.value)
            print([[Press p or "*p to paste this glyph]] .. glyph.value)

            -- insert glyph when picked
            -- vim.api.nvim_put({ glyph.value }, 'c', false, true)
          end,
        },
      },
    },
    keys = {
      { "<leader>/", false },
    },
  },
}
