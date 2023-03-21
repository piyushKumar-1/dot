local fn = vim.fn

-- Auto install packer if not installed
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
  vim.cmd("packadd packer.nvim")
end

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use "gruvbox-community/gruvbox"
  use "nvim-lua/plenary.nvim"
  use { "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" }
  }
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }
  use {
    "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" }
  }
  use "neovim/nvim-lspconfig"

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "onsails/lspkind-nvim"

  use "lukas-reineke/indent-blankline.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  use {
    "akinsho/bufferline.nvim",
    tag = "*",
    requires = "kyazdani42/nvim-web-devicons"
  }

  use { "lewis6991/gitsigns.nvim", tag = "release" }

  -- Syntax extras
  use "pangloss/vim-javascript"
  use "neovimhaskell/haskell-vim"
  use "Mofiqul/vscode.nvim"
  use "uiiaoo/java-syntax.vim"
  use "MaxMEllon/vim-jsx-pretty"
  use "martinda/Jenkinsfile-vim-syntax"
  use "dag/vim-fish"
  use "bfrg/vim-cpp-modern"
  use "godlygeek/tabular"
  use "preservim/vim-markdown"

  use "folke/which-key.nvim"
  use "tpope/vim-fugitive"
  use "edkolev/tmuxline.vim"
  use "projekt0n/github-nvim-theme"
  use "windwp/nvim-autopairs"
  use "windwp/nvim-spectre"
end)
