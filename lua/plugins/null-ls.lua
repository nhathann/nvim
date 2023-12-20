return {

  -- Use neovim as a language server to inject lsp diagnostics, code actions, and more via lua
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    config = function(_, opts) -- opts is received from child spec (formatting, linting)
      local sources = {}
      for _, to_register_wrap in pairs(opts) do
        local to_register = to_register_wrap()
        table.insert(sources, to_register)
      end 
      require("null-ls").setup({
        sources = sources,
      })
    end,
  },

}