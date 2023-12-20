return {

  -- Super powerful fuzzy-finder
  {
    "nvim-telescope/telescope.nvim",
		event = "VeryLazy",
    cmd = "Telescope",
		dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-telescope/telescope-symbols.nvim",
    },
		config = function()
		end,
  },

  -- Native telescope sorter to significantly improve sorting performance
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    lazy = true,
    build = "make",
  },

  -- Enable passing arguments to the live_grep of telescope
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
    lazy = true,
  },

  -- A telescope extension to view and search your undo tree
  {
    "debugloop/telescope-undo.nvim",
    lazy = true,
  },

}