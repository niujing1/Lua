
foo = 30
print(foo)

local foo = foo
if 1 then 
  local  foo = 40
  print(foo)
end
--foo = 20


print(foo)
