return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      mappings = {
        accept_diff = {
          normal = '<C-y>',
          insert = '<C-y>',
        },
        close = {
          normal = 'q',
          insert = '<C-x>',
        },
      },
      window = {
    width = 0.3,
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
