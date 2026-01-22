-- bootstrap lazy.nvim, LazyVim and your plugins

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamed"
vim.opt.number = true
vim.opt.termguicolors = true
vim.g.mapleader = " "

-- auto refresh buffers
vim.opt.autoread = true
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter", "CursorHold", "CursorHoldI"}, {
  command = "checktime"
})
vim.opt.updatetime = 200

local function load_env_var_from_file(var, file)
    local f = io.open(file, "r")
    if not f then return end
    for line in f:lines() do
      local k, v = line:match("^([%w_]+)%s*=%s*(.+)$")
      if k == var then
        vim.env[var] = v
        break
      end
    end
    f:close()
  end

require("config.lazy")
