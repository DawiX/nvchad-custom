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
        -- "zig",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        -- "rustfmt", -- not needed
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
        "pyright",
        "ansible-language-server",
        "ansible-lint",
        "cfn-lint",
        "yamllint",
        "yaml-language-server",
        "jsonlint",
        "json-lsp",
        "lemminx",
        "sqlls",
        "sqlfmt",
        "gopls",
        "golines",
        "markdownlint",
        "dockerfile-language-server",
        "hadolint",
        "marksman",
        -- "csharp-language-server",
        -- "csharpier",
        -- "zls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "nvimtools/none-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  { "hashivim/vim-terraform" },
  { "tpope/vim-surround", lazy = false },
  { "mg979/vim-visual-multi", lazy = false },
  { "vim-scripts/ReplaceWithRegister" }, -- replace with register contents using motion (gr + motion)
  {
    "NTBBloodbath/rest.nvim",
    ft = "http",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup {
        result_split_horizontal = false,
        result_split_in_place = false,
        skip_ssl_verification = false,
        encode_url = true,
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          show_url = true,
          show_http_info = true,
          show_headers = true,
          formatters = {
            json = "jq",
            -- html = function(body) return vim.fn.system({ "tidy", "-i", "-q", "-" }, body) end,
          },
        },
        jump_to_request = false,
        env_file = ".env",
        custom_dynamic_variables = {},
        yank_dry_run = true,
      }
    end,
  },
  -- this collides with vim-surround's mappings
  -- and leap vs vim-surround, leap is more useful plugin
  -- {
  --   "ggandor/leap.nvim",
  --   lazy = false,
  --   dependencies = {
  --     "tpope/vim-repeat",
  --   },
  --   config = function()
  --     require("leap").add_default_mappings()
  --   end,
  -- },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
  },
  {
    "eandrju/cellular-automaton.nvim",
    lazy = false,
  },
}
return plugins
