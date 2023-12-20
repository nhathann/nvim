return {

	-- Dashboard
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    -- config = require("ui.dashboard"),
		config = function()
			-- ...
		end,
    dependencies = { 
			"nvim-tree/nvim-web-devicons",
		},
  },

  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },

	-- Neovim plugin to improve the default vim.ui interfaces
  {
    "stevearc/dressing.nvim",
    event = "BufEnter",
    config = function()
      require("dressing").setup({
        input = {
          win_options = {
            winblend = 0,
          },
        },
      })
    end,
  },

	-- Status line
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
    config = function()
      require("lualine").setup({
        options = {
          disabled_filetypes = { "NvimTree", "dashboard" },
        },
        sections = {
          lualine_x = { "encoding", "filesize", "fileformat", "filetype" },
        },
      })
      vim.opt.showmode = false
    end,
  },

	-- Color highlighter
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufEnter",
    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        user_default_options = {
          names = false,
          tailwind = "both",
          mode = "background",
        },
      })
    end,
  },

	-- Git decorations
  {
    "lewis6991/gitsigns.nvim",
    event = "BufEnter",
		-- config = require("ui.gitsigns"),
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
        },
        -- signs = {
        --   add = { text = '+' },
        --   change = { text = '~' },
        --   delete = { text = '_' },
        --   topdelete = { text = '‾' },
        --   changedelete = { text = '~' },
        -- },
      })
    end,
  },

	-- Indent blankline
	{
    "lukas-reineke/indent-blankline.nvim",
		event = "BufEnter",
    version = "2",
		-- config = require("ui.indent-blankline"),
    config = function()
      vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { link = "IndentBlanklineChar" })
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { link = "IndentBlanklineChar" })
        end,
        group = vim.api.nvim_create_augroup("RelinkIndentBlanklineHightLightGroup", { clear = true }),
        desc = "Relink IndentBlankline Highlight Group",
      })
      require("indent_blankline").setup({
        char = "",
        context_char = "│",
        show_current_context = true,
      })
    end,
  },

	-- Bufferline
	{
		"akinsho/bufferline.nvim",
		event = "BufReadPre",
		config = function()
			require("bufferline").setup({
				options = {
					numbers = "none",
					diagnostics = false,
					separator_style = "padded_slant",
					show_tab_indicators = true,
					show_buffer_close_icons = true,
          offsets = {
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
					hover = {
						enabled = true,
						delay = 200,
						reveal = {'close'},
					},
				},
			})
		end,
		dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
	},

	-- Nvim tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    -- config = require("ui.nvim_tree"),
	},

}