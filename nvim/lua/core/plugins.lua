local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- Ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require('packer')
local util = require('packer.util')

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

-- Startup and add / configure plugins
packer.startup(function()
  local use = use
  -- ADD PLUGINS HERE

  use({
    'williamboman/mason.nvim',
    config = function()
      require('modules.completion.lsp')
    end
  })

  use({
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('modules.completion.lsp')
    end
  })

  use({
    'neovim/nvim-lspconfig',
    ft = { 'lua', 'sh', 'go', 'py', 'rb', 'c', 'js', 'python', },
    config = function()
      require('modules.completion.lspconf')
    end
  })

  use({
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-lspconfig' },
      { 'hrsh7th/cmp-path', after = 'nvim-cmp' },
      { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
      { 'saadparwaiz1/cmp_luasnip', after = 'LuaSnip' },
    },
    config = function()
      require('modules.completion.cmp-config')
    end
  })

  use({
    'L3MON4D3/LuaSnip',
    event = 'InsertCharPre',
    config = function()
      require('modules.completion.snip-config')
    end
  })

  use({
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = function()
      require('modules.ui.spaceline')
    end,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    run = ':TSUpdate',
    config = function()
      require('modules.lang.treesitter')
    end
  })

  use({
    'glepnir/zephyr-nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
  })

  use({
    'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('modules.ui.buffer')
    end
  })

  use({
    'kyazdani42/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('modules.ui.tree')
    end
  })

  use 'jiangmiao/auto-pairs'

  use({
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzy-native.nvim' },
    },
    config = function()
      require('modules.tools.telescope')
    end
  })

  use 'fatih/vim-go'
end)
