return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").install({
      "bash",
      "cmake",
      "cpp",
      "css",
      "csv",
      "diff",
      "dockerfile",
      "git_config",
      "git_rebase",
      "gitattributes",
      -- "gitcommit", not working...
      "gitignore",
      "go",
      "graphql",
      "html",
      "http",
      "java",
      "javadoc",
      "javascript",
      "jq",
      "jsdoc",
      "json",
      "kitty",
      "lua",
      "luadoc",
      "make",
      "markdown",
      "markdown_inline",
      "matlab",
      "mermaid",
      "nginx",
      "objc",
      "python",
      "requirements",
      "rust",
      "scss",
      "sql",
      "ssh_config",
      "swift",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
      "zsh"
    })

    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.opt.foldlevelstart = 3
  end,
}
