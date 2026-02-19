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

    -- TODO: temp disable markdown parsing due to .md crashing
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "markdown",
      callback = function(args)
        vim.opt_local.foldmethod = "manual"
        vim.opt_local.foldexpr = "0"
        pcall(vim.treesitter.stop, args.buf)
      end,
    })

  end,
}
