function cmd_args(dict)
  local result = {}
  for key, value in pairs(dict) do
    table.insert(result, key .. "=" .. tostring(value))
  end
  return table.concat(result, ",")
end
