return {
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function ()
      local treesitter_config = require("nvim-treesitter.configs")
      treesitter_config.setup({
        -- ensure_installed = {
        --   "bash", "c", "cpp", "css", "diff", "git_config", "git_rebase",
        --   "gitattributes", "gitignore", "html", "java", "json",
        --   "javascript", "latex", "lua", "luadoc", "make", "markdown",
        --   "python", "regex", "sql", "xml", "yaml"
        -- },
        ensure_installed = "all",
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
