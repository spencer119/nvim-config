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
    },
    opts = {
      defaults = {
        layout_strategy = "flex",
      },
      extensions = {
        bookmarks = {
          selected_browser = "chrome_beta",
        },
      },
    },
    keys = {
      { "<leader>/", false },
    },
  },
}
