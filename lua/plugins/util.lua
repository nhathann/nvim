return {
	
	-- Commenting
	{
		"numToStr/Comment.nvim",
		event = "BufEnter",
		config = function()
			require("Comment").setup()
		end,
	},

	-- Display a popup with possible keybindings of the command
	{
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.timeoutlen = 300
      require("which-key").setup()
    end,
  },

	-- Lua library for neovim
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },

	{
		"folke/todo-comments.nvim",
		dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
			require("todo-comments").setup()
		end,
	},

	{
		"akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
    end,
	},

	{
		"sindrets/diffview.nvim",
    config = function()
			require("diffview").setup()
		end,
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
	},

  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup()
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "fedepujol/move.nvim",
    event = "BufEnter",
    config = function()
			-- just for example, change later
      vim.keymap.set("n", "<M-Down>", "<Cmd>MoveLine(1)<CR>", { desc = "Move line up" })
    end,
  },

  {
    "mg979/vim-visual-multi",
    event = "BufEnter",
  },

	-- Vscode-like pictograms
	{
		"onsails/lspkind-nvim",
		config = function()
			require("lspkind").init({
				preset = "codicons",
			})
		end,
	},

	{
		"simrat39/symbols-outline.nvim",
		cmd = "SymbolsOutline",
		opts = {
			position = right,
		},
    config = function()
      require("symbols-outline").setup()
    end,
	},

  -- Git wrapper
	{
		"tpope/vim-fugitive",
		cmd = { "Git", "G" },
		config = function() 
			require("vim-fugitive").setup()
		end,
	},

}