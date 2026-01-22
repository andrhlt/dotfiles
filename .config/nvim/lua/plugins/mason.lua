return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        automatic_enable = true,
        ensure_installed = {
          "basedpyright",
          "cssls",
          "dockerls",
          "gh_actions_ls",
          "graphql",
          "harper_ls",
          "jdtls",
          "jsonls",
          "lua_ls",
          "ruff",
          "rust_analyzer",
          "sqlls",
          "superhtml",
          "ts_ls"
        }
      })
    end,
  },
}
