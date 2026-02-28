return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "bash", "python", "c", "cpp" },
        highlight = { enable = true },
      })
    end,
  },
}
