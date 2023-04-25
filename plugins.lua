-- local utils = require "astronvim.utils"
-- local is_available = utils.is_available
-- if is_available "toggleterm.nvim" then
--     require("toggleterm.terminal").Terminal:new({shell = "powershell.exe"})
--     -- require("toggleterm.nvim").setup({shell = "powershell.exe"})
-- end

local plugins = { 
    { "mg979/vim-visual-multi", ft = {"lua","text","html","txt","sql","php","jsx","ts","xml","wsdl","javascript"} },
    {
        "toggleterm.nvim",
        shell = "C:/Users/odrom/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe"
      }

} return plugins
