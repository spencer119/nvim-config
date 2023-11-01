local opts = { noremap = true, silent = true }
local delete = vim.keymap.del
local map = vim.api.nvim_set_keymap
map(
  "n",
  "<C-c><C-d>",
  ':cd %:p:h<cr> <bar> :lua vim.notify("Working directory changed", "success", {timeout = 1500, title = "Neovim"})',
  { noremap = true, silent = true }
)
map("n", "<C-t>", ":ToggleTerm direction=float<cr>", { noremap = true, silent = true })
map("t", "<C-t>", "<cmd>ToggleTerm direction=float<cr>", { noremap = true, silent = true })
map("n", "<C-/>", ":ToggleTerm direction=horizontal<cr>", { noremap = true, silent = true })
map("t", "<C-/>", "<cmd>ToggleTerm direction=horizontal<cr>", { noremap = true, silent = true })
map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", opts)
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", opts)
map("n", "q", "<Nop>", opts)
-- map('t', '<C-t>', ':ToggleTerm direction=float<cr>', { noremap = true, silent = true })

-- delete('n', '<C-/>')
