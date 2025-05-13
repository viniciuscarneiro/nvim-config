-- Carrega configurações básicas
require("config.options")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Carrega os plugins
require("lazy").setup("plugins")

-- Aplica tema
vim.schedule(function()
  vim.cmd.colorscheme("catppuccin")
end)
