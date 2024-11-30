local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dP', opts)
keymap("n", "<C-s>", ":write<CR>", opts)
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>")

keymap("n", "oo", "m`o<Esc>``", opts)
keymap("n", "OO", "m`O<Esc>``", opts)

if vim.g.vscode then
  local code = require("vscode")

  keymap("n", "<Tab>", ":Tabnext<CR>", opts)
  keymap("n", "<S-Tab>", ":Tabprev<CR>", opts)

  keymap({ "n", "x" }, "<C-k>", function() code.action("workbench.action.navigateUp") end, opts)
  keymap({ "n", "x" }, "<C-j>", function() code.action("workbench.action.navigateDown") end, opts)
  keymap({ "n", "x" }, "<C-h>", function() code.action("workbench.action.navigateLeft") end, opts)
  keymap({ "n", "x" }, "<C-l>", function() code.action("workbench.action.navigateRight") end, opts)

  keymap("n", "<leader>", function() code.action("whichkey.show", opts) end, opts)
else
  keymap("i", "jk", "<Esc>", opts)
  keymap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

  keymap("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
  keymap("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
  keymap("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
  keymap("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })

  keymap("n", "<S-l>", ":bnext<CR>", opts)
  keymap("n", "<S-h>", ":bprevious<CR>", opts)

  keymap("n", "<Tab>", ":tabn<CR>", opts)
  keymap("n", "<S-Tab>", ":tabp<CR>", opts)

  keymap("n", "<C-Up>", ":resize -2<CR>", opts)
  keymap("n", "<C-Down>", ":resize +2<CR>", opts)
  keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
  keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

  -- Highlight when yanking (copying) text
  vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function() vim.highlight.on_yank() end,
  })
end
