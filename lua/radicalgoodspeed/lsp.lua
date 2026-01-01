local M = {}

function M.get(p)
  return {
    -- Classic LSP reference highlights (still used by some flows)
    LspReferenceText = { bg = p and p.bg2 or "#303030" },
    LspReferenceRead = { bg = p and p.bg2 or "#303030" },
    LspReferenceWrite = { bg = p and p.bg2 or "#303030" },

    -- LSP semantic tokens (Neovim 0.11+)
    ["@lsp.type.class"] = { link = "Type" },
    ["@lsp.type.interface"] = { link = "Type" },
    ["@lsp.type.enum"] = { link = "Type" },
    ["@lsp.type.type"] = { link = "Type" },
    ["@lsp.type.typeParameter"] = { link = "Type" },
    ["@lsp.type.namespace"] = { link = "Identifier" },

    ["@lsp.type.function"] = { link = "Function" },
    ["@lsp.type.method"] = { link = "Function" },
    ["@lsp.type.constructor"] = { link = "Function" },

    ["@lsp.type.variable"] = { link = "Identifier" },
    ["@lsp.type.parameter"] = { link = "Identifier" },
    ["@lsp.type.property"] = { link = "Identifier" },
    ["@lsp.type.enumMember"] = { link = "Constant" },
    ["@lsp.type.event"] = { link = "Constant" },

    ["@lsp.type.keyword"] = { link = "Keyword" },
    ["@lsp.type.modifier"] = { link = "Keyword" },
    ["@lsp.type.operator"] = { link = "Operator" },
    ["@lsp.type.comment"] = { link = "Comment" },
    ["@lsp.type.string"] = { link = "Constant" },
    ["@lsp.type.number"] = { link = "Number" },
    ["@lsp.type.boolean"] = { link = "Constant" },
    ["@lsp.type.regexp"] = { link = "Constant" },
    ["@lsp.type.formatSpecifier"] = { link = "Special" },

    -- Modifiers
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.unused"] = { underline = true },

    ["@lsp.typemod.variable.readonly"] = { link = "Constant" },
    ["@lsp.typemod.property.readonly"] = { link = "Constant" },
  }
end

return M
