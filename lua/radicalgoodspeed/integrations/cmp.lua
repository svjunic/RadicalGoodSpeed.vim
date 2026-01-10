local M = {}

function M.is_available()
  local ok, _ = pcall(require, "cmp")
  return ok
end

function M.get(p)
  return {
    CmpPmenu = { link = "Pmenu" },

    CmpItemAbbr            = { fg = p.fg1, bg = p.bg0 },
    CmpItemAbbrMatch       = { fg = p.bg0, bg = p.green1, bold = true },
    CmpItemAbbrMatchFuzzy  = { fg = p.bg0, bg = p.green1, bold = true },
    CmpDocumentation       = { link = "NormalFloat" },
    CmpDocumentationBorder = { link = "FloatBorder" },
    CmpItemMenu            = { fg = p.fg1     },
    CmpItemKind            = { fg = "#949494" },
    CmpItemKindVariable    = { fg = p.fg1     },
    CmpItemKindFunction    = { fg = "#e300ff" },
    CmpItemKindKeyword     = { fg = "#fd6944" },
    CmpItemKindClass       = { fg = "#ffff0b" },
    CmpItemKindMethod      = { fg = "#e300ff" },
    CmpItemKindProperty    = { fg = "#1cd69d" },
    CmpItemKindConstructor = { fg = p.fg1     },
  }
end

return M
