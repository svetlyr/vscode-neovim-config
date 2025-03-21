local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.have_nerd_font = true

vim.g.fast_cursor_move_acceleration = false

opt.showmode = false

opt.timeoutlen = 300

opt.signcolumn = "yes"

opt.termguicolors = true

opt.virtualedit = "onemore"

opt.guicursor = "n:hor100,i:ver1"

opt.shortmess:append("c")
opt.iskeyword:append("-,#")
opt.whichwrap:append("<,>,[,],h,l")

-- Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function() opt.clipboard = "unnamedplus" end)

if vim.g.vscode then
  opt.list = false
  opt.swapfile = false
  opt.cursorline = false

  opt.number = false
  opt.relativenumber = false

  opt.updatetime = 1000

  -- NOTE: Potential fix for ghost text
  vim.api.nvim_create_autocmd("CursorHold", {
    pattern = "*",
    command = "silent! mode",
  })
else
  opt.wrap = true

  opt.number = true
  opt.relativenumber = true

  opt.mouse = "a"

  opt.breakindent = true

  opt.undofile = true

  opt.smartcase = true
  opt.ignorecase = true

  opt.updatetime = 250

  opt.splitright = true
  opt.splitbelow = true

  opt.list = true
  opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

  opt.inccommand = "split"

  opt.cursorline = true

  opt.scrolloff = 10

  -- * Fix split delimiter color
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*", -- Matches all color schemes
    desc = "Set custom highlights for WinSeparator",
    group = vim.api.nvim_create_augroup("ColorSchemeOverrides", { clear = true }),
    callback = function() vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#2E303E", bg = nil }) end,
  })
end
