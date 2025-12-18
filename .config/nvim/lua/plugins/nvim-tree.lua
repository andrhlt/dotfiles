return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      diagnostics = {
        enable = true,
        show_on_dirs = true
      },
      git = {
        enable = true,
        ignore = false
      },
      filters = {
        git_ignored = false
      }
    })
    vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}
