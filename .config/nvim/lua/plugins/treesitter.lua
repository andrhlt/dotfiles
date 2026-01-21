return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",

  lazy = false,

  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,

  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "html",
      },

      auto_install = true,

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    })

    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.opt.foldlevelstart = 3
  end,
}
