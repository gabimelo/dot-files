return {
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make"
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true, -- show hidden files
            hide_dotfiles = false,
            hide_gitignored = false,
          },
          follow_current_file = {
            enabled = true, -- focus on the file currently opened
          },
        },
        buffers = {
          follow_current_file = {
            enabled = true, -- focus on the file currently opened
          },
        },
        git_status = {
          symbols = {
            added = "✚",
            modified = "",
            deleted = ":heavy_multiplication_x:",
            renamed = "➜",
            untracked = "★",
          },
        },
        window = {
          position = "right",
          width = 40,
          mappings = {
            ["<CR>"] = "open",
            ["<C-v>"] = "open_vsplit",
            ["<C-x>"] = "open_split",
            ["<C-t>"] = "open_tabnew",
            ["q"] = "close_window",
            Y = "copy_selector",
          },
        },
    commands = {
          copy_selector = function(state)
            local node = state.tree:get_node()
            local filepath = node:get_id()
            local filename = node.name
            local modify = vim.fn.fnamemodify

            local vals = {
              ["BASENAME"] = modify(filename, ":r"),
              ["EXTENSION"] = modify(filename, ":e"),
              ["FILENAME"] = filename,
              ["PATH (CWD)"] = modify(filepath, ":."),
              ["PATH (HOME)"] = modify(filepath, ":~"),
              ["PATH"] = filepath,
              ["URI"] = vim.uri_from_fname(filepath),
            }

            local options = vim.tbl_filter(
              function(val)
                return vals[val] ~= ""
              end,
              vim.tbl_keys(vals)
            )
            if vim.tbl_isempty(options) then
              vim.notify("No values to copy", vim.log.levels.WARN)
              return
            end
            table.sort(options)
            vim.ui.select(options, {
              prompt = "Choose to copy to clipboard:",
              format_item = function(item)
                return ("%s: %s"):format(item, vals[item])
              end,
            }, function(choice)
              local result = vals[choice]
              if result then
                vim.notify(("Copied: %s"):format(result))
                vim.fn.setreg("+", result)
              end
            end)
          end,
        },
      })
    end
  }
}
