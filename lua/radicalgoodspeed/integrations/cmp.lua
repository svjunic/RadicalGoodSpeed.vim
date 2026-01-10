local M = {}

function M.is_available()
  local ok, _ = pcall(require, "cmp")
  return ok
end

function M.get(p)
  return {
    CmpPmenu = { link = "Pmenu" },

    CmpItemAbbr           = { fg = p.fg1, bg = p.bg0 },
    CmpItemAbbrMatch      = { fg = p.bg0, bg = p.green1, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.bg0, bg = p.green1, bold = true },
    --CmpItemMenu           = { fg = p.bg0, bg = p.fg1 },
    --CmpItemKind           = { fg = p.bg0, bg = "#949494" },
    --CmpDocumentation      = { fg = p.fg2, bg = p.bg0 },

    -- CmpItemAbbr           = { fg = p.bg0, bg = p.fg1 },
    -- CmpItemAbbrMatch      = { fg = p.blue1, bg = p.bg0, bold = true },
    -- CmpItemAbbrMatchFuzzy = { fg = p.blue1, bg = p.bg0, bold = true },
    CmpItemMenu           = { fg = p.fg1, bg = p.bg0 },
    CmpItemKind           = { fg = "#949494", bg = p.bg0 },
    CmpDocumentation      = { fg = p.bg0, bg = p.fg2 },

    -- Kind examples (minimal)
    CmpItemKindVariable    = { fg = p.fg1 , bg = p.bg0 },
    CmpItemKindFunction    = { fg = "#e300ff", bg = p.bg0 },
    CmpItemKindKeyword     = { fg = "#fd6944", bg = p.bg0 },
    CmpItemKindClass       = { fg = "#ffff0b", bg = p.bg0 },
    CmpItemKindMethod      = { fg = "#e300ff", bg = p.bg0 },
    CmpItemKindProperty    = { fg = "#1cd69d", bg = p.bg0 },
    CmpItemKindConstructor = { fg = p.fg1, bg = p.bg0 },
  }
end

return M
