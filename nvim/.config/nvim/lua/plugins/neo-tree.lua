return {
  "nvim-neo-tree/neo-tree.nvim", 
  branch = "v3.x", 
  dependencies = {
    "nvim-lua/plenary.nvim", 
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim", 
    -- "3rd/image.nvim", -- Optional image support in preview window
  }, 
  config = function()
    local config = require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_opened", 
          handler = function(file_path)
            -- auto close
            -- vimc.cmd("Neotree close")
            -- OR
            require("neo-tree.command").execute({ action = "close" })
          end
        }
      }
    })
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end
}
