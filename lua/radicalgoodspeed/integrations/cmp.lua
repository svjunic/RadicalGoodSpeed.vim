local M = {}

function M.is_available()
  local ok, _ = pcall(require, "cmp")
  return ok
end

function M.get(p)
  return {
    CmpPmenu = { link = "Pmenu" },

    CmpItemAbbr = { fg = p.fg1, bg = p.bg0 },
    CmpItemAbbrMatch = { fg = p.bg0, bg = p.blue1, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.bg0, bg = p.blue1, bold = true },
    CmpItemMenu = { fg = p.bg0, bg = p.fg1 },
    CmpItemKind = { fg = p.bg0, bg = "#949494" },
    CmpDocumentation = { fg = p.fg2, bg = p.bg0 },

    -- Kind examples (minimal)
    CmpItemKindVariable = { fg = p.bg0, bg = "#1cd69d" },
    CmpItemKindFunction = { fg = p.bg0, bg = "#e300ff" },
    CmpItemKindKeyword = { fg = p.bg0, bg = "#fd6944" },
    CmpItemKindClass = { fg = p.bg0, bg = "#ffff0b" },
  }
end

return M
