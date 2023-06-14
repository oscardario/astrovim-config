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
    "toggleterm.nvim",
    shell = "C:/Users/odrom/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe"
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
  }
}
return plugins
