local M = {}

M.abc = {
  v = {
      ["vv"] = { "<Esc>", desc = "vv to leave visual mode" },
      ["J"] = { ":<C-u>silent! '<,'>move'>+1<CR>gv=gv", desc = "Move highlight down" },
      ["K"] = { ":<C-u>silent! '<,'>move-2<CR>gv=gv", desc = "Move highlight up" },
  },
}
return M
