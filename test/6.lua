
-- lua 的系统库

local t = {}
for i=1,3 do
  table.insert(t,i)
end

for k,v in pairs(t) do
  print(k,v)
end

-- see contents in table
--[[for k,v in pairs(table) do
  print(k,v)
end]]

-- table.remove
table.remove(t,2)
for k,v in pairs(t) do
  print(k,v)
end
