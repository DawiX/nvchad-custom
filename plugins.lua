local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "python",
        "regex",
        "rust",
        "sql",
        "yaml",
        "http",
        "java",
        "hcl",
        "go",
        "bash",
        "c_sharp",
        "json",
        "json5",
        "terraform",
      },
    },
  },
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "rust-analyzer",
        "rustfmt",
        "lua-language-server",
        "stylua",
        "html-lsp",
        "prettier",
        "terraform-ls",
        "tflint",
        "bash-language-server",
        "shellcheck",
        "shfmt",
        "shellharden",
        "autopep8",
        "pylint",
        "ansible-language-server",
        "ansible-lint",
        "cfn-lint",
        "yamllint",
        "yaml-language-server",
        "jsonlint",
        "json-lsp",
        "sqlls",
        "sqlfmt",
        "gopls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  }
}
return plugins
