return { 
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate", 
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "c", "lua", "vim", "javascript", "html", "java", "python" }, -- ensure the correct language parsers are installed in treesitter
      highlight = { enable = true }, 
      indent = { enable = true }, 
    })
  end
}
