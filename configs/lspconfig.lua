local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern "Cargo.toml",
}

lspconfig.terraformls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "terraform-vars" },
  root_dir = lspconfig.util.root_pattern(".terraform", ".git"),
}

lspconfig.tflint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "tflint", "--langserver" },
  filetypes = { "terraform" },
  root_dir = lspconfig.util.root_pattern(".terraform", ".tflint.hcl", ".git"),
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
}

lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "bash-language-server", "start" },
  filetypes = { "sh" },
  root_dir = lspconfig.util.find_git_ancestor,
  settings = {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)",
    },
  },
  single_file_support = true,
}

lspconfig.ansiblels.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yaml.ansible" },
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml", "yaml.dockercompose" },
  settings = {
    redhat = {
      telemetry = {
        enabled = false,
      },
    },
    yaml = {
      keyOrdering = false,
      customTags = {
        "!reference sequence",
        "!And",
        "!And sequence",
        "!If",
        "!If sequence",
        "!Not",
        "!Not sequence",
        "!Equals",
        "!Equals sequence",
        "!Or",
        "!Or sequence",
        "!FindInMap",
        "!FindInMap sequence",
        "!Base64",
        "!Join",
        "!Join sequence",
        "!Cidr",
        "!Ref",
        "!Sub",
        "!Sub sequence",
        "!GetAtt",
        "!GetAZs",
        "!ImportValue",
        "!ImportValue sequence",
        "!Select",
        "!Select sequence",
        "!Split",
        "!Split sequence",
      },
    },
  },
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "docker-langserver", "--stdio" },
  filetypes = { "dockerfile" },
  root_dir = lspconfig.util.root_pattern "Dockerfile",
}

lspconfig.marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "marksman", "server" },
  filetypes = { "markdown" },
}

-- lspconfig.zls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { "zls" },
--   filetypes = { "zig", "zir" },
--   root_dir = lspconfig.util.root_pattern("zls.json", ".git"),
-- }

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
      },
    },
  },
}

lspconfig.csharp_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "csharp-ls" },
  filetypes = { "cs" },
}

lspconfig.sqlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "sql-language-server", "up", "--method", "stdio" },
  filetypes = { "sql", "mysql", "psql" },
}

lspconfig.lemminx.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "lemminx" },
  filetypes = { "xml" },
}
