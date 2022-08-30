return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'ggandor/lightspeed.nvim'
  use 'mbbill/undotree'
  use 'preservim/nerdtree'
  use 'vim-airline/vim-airline'
  use 'rafi/awesome-vim-colorschemes'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'ryanoasis/vim-devicons'
  use 'preservim/tagbar'
  use 'neovim/nvim-lspconfig'
end)
