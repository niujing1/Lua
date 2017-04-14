
--迭代器

function values(t)
  local i=0
  return function () 
    i = i+1 
    return t[i]
   end
end

t = {1,2,3}
iter = values(t) --create iterator
while true do
  local element = iter() --use iterator
  if element == nil then break end
  print(element)
end

--for can do better

t = {10,20,30}
for element in values(t) do
 print(element)
end
