-- Vim configs
vim.opt.clipboard = "unnamedplus" -- so that yanking goes to system clipboard
vim.opt.colorcolumn = "120"
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5 -- start scrolling 5 lines before the edge
vim.opt.termguicolors = true -- required for bufferline to work
vim.opt.foldmethod = "expr" -- required for treesitter folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- required for treesitter folding
vim.opt.foldenable = false -- Start with folds open
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Key mappings
vim.api.nvim_set_keymap('n', '<C-S>', ':w<CR>', { noremap = true, silent = true, desc = 'Save file' })
vim.api.nvim_set_keymap('n', '<C-Q>', ':q<CR>', { noremap = true, silent = true, desc = 'Quit file' })
vim.api.nvim_set_keymap('n', '<C-l>', ':bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })
vim.api.nvim_set_keymap('n', '<C-h>', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })
vim.api.nvim_set_keymap('n', '<leader>l', ':bnext<bar>bd#<CR>', { noremap = true, silent = true, desc = 'Next buffer and close previous' })
vim.api.nvim_set_keymap('n', '<leader>h', ':bprevious<bar>bd#<CR>', { noremap = true, silent = true, desc = 'Previous buffer and close previous' })
vim.api.nvim_set_keymap('n', '<C-d>', ':bd<CR>', { noremap = true, silent = true, desc = 'Delete buffer' })
vim.api.nvim_set_keymap('t', '<C-w>', '<C-\\><C-n>', { noremap = true, silent = true, desc = 'Exit terminal mode' })

-- Copilot
vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("\\<CR>")', { noremap = true, silent = true, expr = true, script = true })
vim.api.nvim_set_keymap('n', '<leader>ct', ':CopilotChatToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>ct', ':CopilotChatToggle<CR>', { noremap = true, silent = true })
vim.g.copilot_workspace_folders = { "~/src/credit_card/python" }

-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>o", ":Neotree focus<CR>", { noremap = true, silent = true })

-- Plugin loading and config
require("config.lazy")
require("bufferline").setup({
  options = {
    name_formatter = function(buf)
      return vim.fn.fnamemodify(buf.path, ':t')
    end,
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        text_align = "center"
      }
    },
  }
})
require("ibl").setup() -- indent blank line
require('gitsigns').setup()

local builtin = require('telescope.builtin')
vim.keymap.set('n', ',e', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<space>', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Telescope lsp definitions' })

-- Theme
vim.cmd[[colorscheme tokyonight-moon]]
