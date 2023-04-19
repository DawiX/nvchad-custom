local M = {}

M.custom = {
  v = {
    ["vv"] = { "<Esc>", desc = "vv to leave visual mode" },
    ["J"] = { ":<C-u>silent! '<,'>move'>+1<CR>gv=gv", desc = "Move highlight down" },
    ["K"] = { ":<C-u>silent! '<,'>move-2<CR>gv=gv", desc = "Move highlight up" },
  },
}

M.disabled = {
  n = {
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

return M
