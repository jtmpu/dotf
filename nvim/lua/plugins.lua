-- Download and install plugin manager
local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
  vim.cmd "packadd packer.nvim"
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Color theme
  use "navarasu/onedark.nvim"

  -- Language client for diagnostics, autocomplete and other sweet stuff
  -- Everything is taken from https://github.com/neovim/nvim-lspconfig
  use "neovim/nvim-lspconfig" -- Collection of configurations for built-in LSP client
  use "hrsh7th/nvim-cmp" -- Autocompletion plugin
  use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp
  use "saadparwaiz1/cmp_luasnip" -- Snippets source for nvim-cmp
  use "L3MON4D3/LuaSnip" -- Snippets plugin

  -- Better syntax highlight, linting and style checking, gives nvim better info for
  -- builtin operations
  use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
  }

  -- Change working dir to project's root directory when opening a file
  use "airblade/vim-rooter"

  -- Downloads and install latest fzf
  use { "junegunn/fzf", run = ":call fzf#install()" }
  -- Fzf plugin
  use "junegunn/fzf.vim"

  use "kyazdani42/nvim-web-devicons"
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

end)
