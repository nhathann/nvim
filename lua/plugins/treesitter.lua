return {
	
	-- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufEnter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/playground",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        ensure_installed = {
          "markdown",
          "bash",
          "regex",
          "c",
          "cpp",
          "java",
          "javascript",
          "typescript",
          "tsx",
          "json",
          "toml",
          "html",
          "css",
          "scss",
          "sql",
          "yaml",
          "dockerfile",
          "go",
          "prisma",
          "lua",
          "rust",
          "python",
					"php",
        },
        auto_install = true,
        autotag = {
          enable = true,
        },
        playground = {
          enable = true,
          disable = {},
        },
      })
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
		dependencies = {
			"hrsh7th/nvim-cmp",
		},
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    event = "BufEnter",
    config = function()
			require("nvim-surround").setup()
    end,
  },

}