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
    },
  },
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "docker-langserver", "--stdio" },
  filetypes = { "dockerfile" },
  root_dir = lspconfig.util.root_pattern("Dockerfile"),
}

lspconfig.marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "marksman", "server" },
  filetypes = { "markdown" },
}
