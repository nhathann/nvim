return {
	
	-- Solarized osaka
	{
    'craftzdog/solarized-osaka.nvim',
    lazy = true, 
    config = function()
      require("solarized-osaka").setup()
    end,
	},

	-- VSCode
	{
		"Mofiqul/vscode.nvim",
    -- make sure we load this during startup if it is your main colorscheme
		lazy = false,
		event = "VimEnter",
    -- make sure to load this before all other start plugins
    priority = 1000,
		config = function()
      -- load the colorscheme here
			vim.cmd([[colorscheme vscode]])
		end,
	},

}