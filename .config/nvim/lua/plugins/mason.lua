return {
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons",  -- optional
    },
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        PATH = "append",
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "typos_lsp", "clangd", "dockerls", "jsonls", "markdown_oxide", "pylsp" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              -- Default to the version of Lua built into neovim
              version = "LuaJIT",
            },
            diagnostics = {
              -- Get the server to recognize the vim global
              globals = { "vim" },
            },
            workspace = {
              -- Neovim runtime files
              library = {
                vim.env.VIMRUNTIME,
                "${3rd}/luv/library",
              },
              -- Disable third party checking to stop annoying prompts when opening lua files
              checkThirdParty = false,
            },
            telemetry = {
              -- Don't send telemetry data
              enabled = false,
            },
          },
        },
      })

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      lspconfig.ruff.setup({
        capabilities = capabilities,
        init_options = {
          settings = {
            -- Ruff language server settings go here
          },
        },
      })

      lspconfig.pylsp.setup{
        capabilities = capabilities,
        settings = {
          pylsp = {
            plugins = {
              pydocstyle = {
                enabled = false,
                convention = "google",
                ignore = {"D100"}
              },
              pycodestyle = {
                select = {"W","E"},
                ignore = {'W391'},
                maxLineLength = 120
              },
              flake8 = {
                maxLineLength = 120
              }
            }
          }
        }
      }

      -- Keybindings
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
