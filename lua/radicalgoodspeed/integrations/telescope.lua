local M = {}

function M.is_available()
  local ok, _ = pcall(require, "telescope")
  return ok
end

function M.get(p)
  return {
    TelescopeBorder = { fg = p.fg3, bg = "NONE" },
    TelescopePromptBorder = { fg = p.fg3, bg = "NONE" },
    TelescopeResultsBorder = { fg = p.fg3, bg = "NONE" },
    TelescopePreviewBorder = { fg = p.fg3, bg = "NONE" },

    TelescopeSelection = { bg = p.bg2 },
    TelescopeMatching = { fg = p.orange0, bold = true },
  }
end

return M
