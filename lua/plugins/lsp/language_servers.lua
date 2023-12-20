return {

  html = {
    name = "html-lsp", -- for mason installer
    disabled = false,
  },

  clangd = {
    name = "clangd",
  },

  gopls = {
    name = "gopls",
  },

  tsserver = {
    name = "typescript-language-server",
  },

  cssls = {
    name = "css-lsp",
  },

  jsonls = {
    name = "json-lsp",
  },

  tailwindcss = {
    name = "tailwindcss-language-server",
  },

  dockerls = {
    name = "dockerfile-language-server",
  },

  pyright = {
    name = "pyright",
    disabled = false,
    config = {
      settings = {
        python = {
          analysis = {
            diagnosticMode = "openFilesOnly",
            extraPaths = { "third_party" },
            typeCheckingMode = "off",
          },
        },
      },
    },
  },

  rust_analyzer = {
    name = "rust-analyzer",
    config = {
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = true,
            experimental = {
              enable = true,
            },
          },
        },
      },
    },
  },

  lua_ls = {
    name = "lua-language-server",
    config = {
      settings = {
        Lua = {
          diagnostics = {
            -- get the language server to recognize the vim global
            globals = { "vim" },
          },
          workspace = {
            -- make the server aware of neovim runtime files
            library = {
              vim.fn.stdpath("config"),
            },
            checkThirdParty = false,
          },
          -- do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    },
  },

}