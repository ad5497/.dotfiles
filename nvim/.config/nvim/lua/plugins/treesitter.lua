return { 
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate", 
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true, 
      ensure_installed = {
        "bash",
        "c",
        "html",
        "java",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "vim",
        "vimdoc"
      },
      highlight = { enable = true }, 
      indent = { enable = true }, 
    }) 
  end
}
