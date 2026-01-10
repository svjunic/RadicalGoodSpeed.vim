local M = {}

function M.get()
  return {
    ["@function"] = { link = "Function" },
    ["@function.method"] = { link = "Function" },
    ["@constructor"] = { link = "Function" },
    ["@method"] = { link = "Function" },

    ["@namespace"] = { link = "Identifier" },
    ["@variable"] = { link = "Identifier" },
    ["@variable.parameter"] = { link = "Identifier" },
    ["@parameter"] = { link = "Identifier" },
    ["@property"] = { link = "Identifier" },
    ["@field"] = { link = "Identifier" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Type" },
    ["@type.qualifier"] = { link = "Type" },

    ["@keyword"] = { link = "Keyword" },
    ["@operator"] = { link = "Operator" },
    ["@comment"] = { link = "Comment" },

    ["@string"] = { link = "Constant" },
    ["@string.regex"] = { link = "Constant" },
    ["@character"] = { link = "Constant" },
    ["@boolean"] = { link = "Constant" },
    ["@number"] = { link = "Number" },
  }
end

return M
