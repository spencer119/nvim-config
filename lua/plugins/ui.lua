return {
  -- {
  --   "navarasu/onedark.nvim",
  --   config = function()
  --     vim.cmd("colorscheme onedark")
  --   end,
  -- },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   config = function()
  --     vim.cmd("colorscheme onedark")
  --   end,
  -- },
  {
    "RRethy/nvim-base16",
    config = function()
      vim.cmd("colorscheme base16-onedark")
    end,
  },
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[

███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

      ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button(
          "c",
          " " .. " Config",
          ":cd ~/.config/nvim<cr> <bar> :edit lua<cr> <bar> :lua vim.notify('Working directory changed', 'success', {timeout = 2500, title = 'Neovim'})<cr> <bar>:Telescope find_files<cr>"
        ),
        dashboard.button("s", "󰑴 " .. "School", ":cd ~/school <bar> :Telescope find_files<CR>"),
        dashboard.button("p", " " .. "Projects", ":cd ~/projects <bar> :Telescope find_files<CR>"),
        -- dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        --         '<cmd>cd ~/.config/nvim<cr> <bar> :edit lua<cr> <bar> :lua vim.notify("Working directory changed", "success", {timeout = 3000, title = "Neovim"})<cr>'

        dashboard.button("S", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.section.footer.opts.hl = "AlphaFooter"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
  },
}
