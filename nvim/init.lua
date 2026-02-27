-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)
vim.opt.number = true
vim.opt.relativenumber = false

require("lazy").setup({
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {   
      dashboard = { enabled = true },
      notifier = { enabled = true },
      picker = { enabled = true },
      input = { enabled = true },
      indent = { enabled = true },
      scroll = { enabled = true },
      words = { enabled = true },
      quickfile = { enable = true},
    },
  },
})
