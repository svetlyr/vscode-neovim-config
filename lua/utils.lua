local M = {}

--- Deep merge two or more tables
--- @param ... any: Multiple tables to merge
--- @return table: A new table that is the result of merging all input tables
function M.merge(...) return vim.tbl_deep_extend("force", ...) end

return M
