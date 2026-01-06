local M = {}

function M.get(p)
  return {
    -- Core
    Normal = { fg = p.fg0, bg = "NONE" },
    NonText = { fg = p.gray0, bg = "NONE" },
    CursorLine = { bg = p.bg0 },
    Cursor = { fg = p.gray1, bg = p.fg0 },

    -- UI
    StatusLine = { fg = p.gray1, bg = p.fg4 },
    StatusLineNC = { fg = p.gray1, bg = p.fg3 },
    VertSplit = { fg = p.fg3, bg = p.fg3 },
    Visual = { bg = p.magenta0 },
    LineNr = { fg = "#4e4e4e", bg = p.bg0 },
    SignColumn = { fg = p.yellow0, bg = p.bg0 },

    -- Search
    Search = { fg = p.gray1, bg = p.orange0 },
    IncSearch = { fg = p.orange0, bg = p.gray1 },

    -- Popup menu
    Pmenu = { fg = p.fg1, bg = p.bg1 },
    PmenuSel = { fg = p.orange0, bg = p.bg1 },
    PmenuSbar = { bg = p.gray2 },
    PmenuThumb = { fg = p.fg1, bg = p.fg1 },

    -- Diff
    DiffDelete = { fg = "#4D3800", bg = "#0e1416" },
    DiffAdd = { bg = "#1f2b2d" },
    DiffChange = { bg = "#003C70" },
    DiffText = { bg = "#b30487" },

    -- Folds
    Folded = { fg = "#000000", bg = "#ae5ff2" },
    FoldColumn = { fg = "#3465a4", bg = p.bg0 },

    -- Tabs
    TabLine = { fg = p.fg0, bg = "#5f5f5f" },
    TabLineFill = { fg = "#5f5f5f", bg = p.bg3, underline = true },
    TabLineSel = { fg = p.fg2, bg = "#d70087", bold = true },

    -- Messages
    MoreMsg = { fg = p.blue0 },
    Question = { fg = p.green0 },
    WildMenu = { fg = p.fg2, bg = p.gray0 },

    -- Misc
    Title = { fg = p.orange0 },
    Todo = { fg = "#5ee710", bg = "#fe2626", underline = true },
    SpecialKey = { fg = p.red0, underline = true },
    MatchParen = { italic = true, bold = true },
    Directory = { fg = p.fg1 },

    -- Syntax
    Comment = { fg = p.cyan0 },
    String = { fg = p.white0 },
    Constant = { fg = p.green0 },
    Number = { fg = p.green0 },
    Statement = { fg = p.pink0 },
    Identifier = { fg = p.yellow0 },
    PreProc = { fg = p.orange0 },
    Function = { fg = "#bd7ae0" },
    Type = { fg = p.fg5 },
    Underlined = { fg = "#00c0ff" },
    Keyword = { fg = p.fg2 },
    Special = { fg = p.fg3 },
    Error = { fg = p.fg2, bg = "#cc0000" },
    Operator = { fg = "#f8a077" },
    Delimiter = { fg = p.fg4 },

    -- Diagnostics
    DiagnosticError = { fg = p.red0 },
    DiagnosticWarn = { fg = p.yellow0 },
    DiagnosticInfo = { fg = p.cyan0 },
    DiagnosticHint = { fg = p.orange0 },
    DiagnosticOk = { fg = p.green0 },

    -- Floating windows
    FloatBorder = { fg = "#af00ff" },
    NormalFloat = { fg = p.fg1, bg = p.bg0 },

    -- Spell
    SpellBad = { underline = true, sp = p.yellow0 },

    -- Html
    htmlTag = { fg = p.white1 },
    htmlEndTag = { fg = p.white1 },
    htmlTagName = { fg = p.white0 },
  }
end

return M
