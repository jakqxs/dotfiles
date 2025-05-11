local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = '\\'
-- 
-- function map(mode, key, command, opt)
-- 	local option = { noremap = true }
-- 	if opt then
-- 		option = vim.tbl_extend('force', option, opt)
-- 	end
-- 	vim.keymap.set(mode, key, command, option)
-- end
-- 
-- map('', '<A-2>', ':NvimTreeToggle<CR>')

require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugin" },
    { import = "plugin/colorscheme" },
    { import = "plugin/interface" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

