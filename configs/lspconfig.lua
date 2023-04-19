local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.terraformls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"terraform-ls", "serve"},
  filetypes = {"terraform", "terraform-vars"},
  root_dir = lspconfig.util.root_pattern(".terraform", ".terraform.lock.hcl", ".git"),
})

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
})

lspconfig.bashls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"bash-language-server", "start"},
  filetypes = {"sh"},
  root_dir = lspconfig.util.find_git_ancestor,
  settings = {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)"
    }
  },
  single_file_support = true,
})

lspconfig.ansiblels.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"ansible-language-server", "--stdio"},
  filetypes = {"yaml.ansible"},
})

lspconfig.yamlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"yaml-language-server", "--stdio"},
  filetypes = {"yaml", "yaml.dockercompose"},
  settings = {
    redhat = {
      telemetry = {
        enabled = false
      }
    }
  },
})
