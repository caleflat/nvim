require 'user.keymaps'
require 'user.plugins'
require 'user.colorscheme'
require 'user.lsp'
require 'user.options'
require 'user.tex'

require('mason').setup()
require('telescope').setup {}
require('bufferline').setup {}
require('go').setup()

pcall(vim.cmd, "COQnow")

vim.g.loadednetrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()
