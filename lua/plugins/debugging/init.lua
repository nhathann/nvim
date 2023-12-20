return {

  -- Debug adapter protocol client implementation for neovim
  {
    'mfussenegger/nvim-dap',
    config = function()
      -- load keymaps and configs
    end,
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-telescope/telescope-dap.nvim',
      'mfussenegger/nvim-dap-python',
      "leoluz/nvim-dap-go",
      'theHamsta/nvim-dap-virtual-text',
    },
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function ()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function ()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function ()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function ()
        dapui.close()
      end
    end
  },

  -- An extension for nvim-dap, providing default configurations for python and methods to debug individual test methods or classes.
  {
    'mfussenegger/nvim-dap-python',
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local python_adapter_path = require("plugins.debugging.adapters").debugpy.path
      require("dap-python").setup(python_adapter_path)
    end,
  },

  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup()
    end,
  },

  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },

}