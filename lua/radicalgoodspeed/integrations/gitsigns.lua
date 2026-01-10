local M = {}

function M.is_available()
  local ok, _ = pcall(require, "gitsigns")
  return ok
end

function M.get(p)
  return {
    GitSignsAdd = { fg = p.green0 },
    GitSignsChange = { fg = p.orange0 },
    GitSignsDelete = { fg = p.red0 },
  }
end

return M
