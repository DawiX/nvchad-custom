local M = {}

M.custom = {
  v = {
    ["vv"] = { "<Esc>", "vv to leave visual mode" },
    ["J"] = { ":<C-u>silent! '<,'>move'>+1<CR>gv=gv", "Move highlight down" },
    ["K"] = { ":<C-u>silent! '<,'>move-2<CR>gv=gv", "Move highlight up" },
    ["<"] = { "<gv", "unindent line" },
    [">"] = { ">gv", "indent line" },
    ["<leader>S"] = { "<Plug>VSurround", "Surround visual selection with char <X>" },
  },
  n = {
    ["<leader>Ti"] = { ":!terraform init --upgrade<CR>", "Terraform init upgrade" },
    ["<leader>Tf"] = { ":!terragrunt hclfmt<CR>", "Terragrunt format" },
    ["<leader>Tl"] = {
      ":!terraform providers lock -platform=linux_amd64 -platform=darwin_amd64<CR>",
      "Terraformm providers lock",
    },
    ["<leader>rr"] = { "<Plug>RestNvim<cr>", "Run request under cursor" },
    ["<leader>rp"] = { "<Plug>RestNvimPreview<cr>", "Preview request cURL command" },
    ["<leader>rl"] = { "<Plug>RestNvimLast<cr>", "Re-run last request" },
    ["<leader>rh"] = { "<cmd>RustHoverActions<cr>", "Rust Hover Actions" },
    ["<leader>aa"] = { ":set ft=yaml.ansible<CR>", "Attach ansiblels manually for open file" },
    ["<leader>cw"] = { ":cd %:p:h<CR>", "Change dir to dir of currently opened file" },
    ["<leader>mr"] = { ":CellularAutomaton make_it_rain<CR>", "Make it rain" },
  },
}

M.disabled = {
  n = {
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

return M
