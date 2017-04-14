
--使用lua实现变长参数

function add(...)
local s = 0
  for i,v in ipairs{...} do
    s = s + v
  end
  return s
end

print(add(3,4,5,6))
