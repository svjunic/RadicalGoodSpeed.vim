local M = {}

local function safe_require(mod)
  local ok, result = pcall(require, mod)
  if not ok then
    return nil
  end
  return result
end

local function set_hl(group, spec)
  if not spec then
    return
  end

  if spec.link then
    vim.api.nvim_set_hl(0, group, { link = spec.link })
    return
  end

  vim.api.nvim_set_hl(0, group, spec)
end

local function apply_groups(groups)
  for name, spec in pairs(groups) do
    set_hl(name, spec)
  end
end

function M.load()
  local p = safe_require("radicalgoodspeed.palette")
  if not p then
    return
  end

  local groups = safe_require("radicalgoodspeed.groups")
  if groups and groups.get then
    apply_groups(groups.get(p))
  end

  local ts = safe_require("radicalgoodspeed.ts")
  if ts and ts.get then
    apply_groups(ts.get())
  end

  local lsp = safe_require("radicalgoodspeed.lsp")
  if lsp and lsp.get then
    apply_groups(lsp.get(p))
  end

  -- integrations (only apply when plugin exists)
  local integrations = {
    "radicalgoodspeed.integrations.cmp",
    "radicalgoodspeed.integrations.gitsigns",
    "radicalgoodspeed.integrations.telescope",
  }

  for _, mod in ipairs(integrations) do
    local integ = safe_require(mod)
    if integ and integ.is_available and integ.get then
      local ok = false
      local ok_is_available, available = pcall(integ.is_available)
      ok = ok_is_available and available
      if ok then
        apply_groups(integ.get(p))
      end
    end
  end
end

return M
