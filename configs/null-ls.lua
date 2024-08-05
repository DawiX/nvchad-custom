local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- html, yaml, json...
  formatting.prettier,
  lint.yamllint,

  -- lua
  formatting.stylua,

  -- python
  formatting.pyink,
  lint.pylint,

  -- go
  formatting.gofmt,
  formatting.goimports,
  formatting.golines,

  -- hashicorp
  formatting.hclfmt,
  formatting.packer,
  formatting.terraform_fmt,
  lint.terraform_validate,

  -- markdown
  formatting.markdownlint,
  lint.markdownlint,

  -- shell
  formatting.shfmt.with {
    extra_args = { "-i", "4" },
  },
  formatting.shellharden,
  formatting.fish_indent,

  -- sql
  formatting.sqlfmt,
  formatting.pg_format,

  -- C#
  formatting.csharpier,

  -- infra tools
  lint.ansiblelint,
  lint.cfn_lint,
  lint.hadolint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
