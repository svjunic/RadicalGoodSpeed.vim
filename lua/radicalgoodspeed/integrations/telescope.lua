local M = {}

function M.is_available()
  local ok, _ = pcall(require, "telescope")
  return ok
end

function M.get(p)
  return {
    TelescopeBorder = { fg = p.fg3, bg = p.bg0 },
    TelescopePromptBorder = { fg = p.fg3, bg = p.bg0 },
    TelescopeResultsBorder = { fg = p.fg3, bg = p.bg0 },
    TelescopePreviewBorder = { fg = p.fg3, bg = p.bg0 },

    TelescopeSelection = { bg = p.bg2 },
    TelescopeMatching = { fg = p.orange0, bold = true },
  }
end

return M
