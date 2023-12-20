return {

  {
    "williamboman/mason.nvim",
		build = ":MasonUpdate",
    dependencies = {
			{ "jay-babu/mason-nvim-dap.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
      {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
          local language_servers = require("plugins.lsp.language_servers")
          local formatters = require("plugins.formatting.formatters")
          local adapters = require("plugins.debugging.adapters")
          local linters = require("plugins.linting.linters")
          local tool_names = {}
          for _, languange_server in pairs(language_servers) do
            table.insert(tool_names, languange_server.name)
          end
          for _, formatter in pairs(formatters) do
            table.insert(tool_names, formatter.name)
          end
          for _, adapter in pairs(adapters) do
            table.insert(tool_names, adapter.name)
          end
          for _, linter in pairs(linters) do
            table.insert(tool_names, linter.name)
          end
          require("mason-tool-installer").setup({
            ensure_installed = tool_names,
          })
        end,
      },
    },
    config = function()
      require("mason").setup({
        providers = {
          "mason.providers.registry-api",
          "mason.providers.client",
        },
        ui = {
          height = 0.85,
          border = "rounded",
        },
      })

      require("mason-lspconfig").setup()
    end,
  },

}