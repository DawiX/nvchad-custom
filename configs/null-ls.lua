local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,
  formatting.autopep8,
  formatting.gofmt,
  formatting.goimports,
  formatting.golines,
  formatting.hclfmt,
  formatting.jq,
  formatting.markdownlint,
  formatting.rustfmt,
  formatting.shfmt.with {
    extra_args = {"-i", "4"},
  },
  formatting.shellharden,
  formatting.sqlfmt,
  formatting.terraform_fmt,
  -- formatting.zigfmt,

  lint.ansiblelint,
  lint.cfn_lint,
  lint.hadolint,
  lint.markdownlint,
  lint.pylint,
  lint.shellcheck,
  lint.terraform_validate,
  lint.yamllint
}

null_ls.setup {
   debug = true,
   sources = sources,
}
