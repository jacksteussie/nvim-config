return {
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
        "tsserver",
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
