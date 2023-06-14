-- local utils = require "astronvim.utils"
-- local is_available = utils.is_available
-- if is_available "toggleterm.nvim" then
--     require("toggleterm.terminal").Terminal:new({shell = "powershell.exe"})
--     -- require("toggleterm.nvim").setup({shell = "powershell.exe"})
-- end

local plugins = {
  {
    "mg979/vim-visual-multi",
    ft = { "lua", "text", "html", "txt", "sql", "php", "jsx", "ts", "xml", "wsdl",
      "javascript" }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            'node_modules/*',
            '.git',
            '.DS_Store',
            'thumbs.db',
          },
          never_show = {},
        },
      }
    }
  },
  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
      -- vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      -- vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      -- vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },
  {
      "jay-babu/mason-nvim-dap.nvim",
      opts = {
        ensure_installed = { "python" },
        handlers = {
          python = function(source_name)
            local dap = require "dap"
            dap.adapters.python = {
              type = "executable",
              command = "/usr/bin/python3",
              args = {
                "-m",
                "debugpy.adapter",
              },
            }
-- Configuration por debuggers
            dap.configurations.python = {
              {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "${file}", -- This configuration will launch the current file if used.
              },
            }
 
            dap.adapters.php = {
              type = 'executable',
              command = 'node',
              args = { '~/vscode-php-debug/out/phpDebug.js' }
            }
            dap.configurations.php = {
              {
                type = "php",
                request = "launch",
                name = "Listen for Xdebug",
                port = 9003
              },
            }
          end,
        },
      },
  },
}
return plugins
