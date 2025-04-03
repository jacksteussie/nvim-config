return {
  -- add tsserver and setup with typescript.nvim instead of lspconfig
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
          -- stylua: ignore
          vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
        end)
      end,
    },
  },
  -- Treesitter Languages
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "rust",
        "go",
        "c",
        "cpp",
        "javascript",
        "typescript",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "html",
        "css",
        "python",
        "vim",
        "bash",
      },
    },
  },

  -- Mason LSP Servers
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "clangd",
        "gopls",
        "eslint",
        "html",
        "cssls",
        "jsonls",
        "yamlls",
        "marksman",
        "pyright",
        "bashls",
      },
    },
  },

  -- Formatters and Linters via Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua", -- Lua formatter
        "prettier", -- JS/TS/CSS/HTML formatter
        "shfmt", -- Bash formatter
        "rustfmt", -- Rust formatter
        "clang-format", -- C/C++ formatter
        "gofumpt", -- Go formatter
        "black", -- Python formatter
        "shellcheck", -- Bash linter
        "eslint_d", -- JS/TS linter
        "flake8", -- Python linter
      },
    },
  },
}
