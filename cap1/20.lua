-- lua 允许多重赋值

s,e = string.find("hello Lua users","Lua")

print(s,e)


function maximum(a)
local mi = 1 --最大值的索引
local m = a[mi] --最大值

for i,val in ipairs(a) do
  if val > m  then
   mi = i;m = val
  end
end
  return m,mi
end

print(maximum({8,10,23,12,5}))
t = maximum({3,1,2,4}) --用函数为变量赋值时，只会保留第一个返回值

print(t)

x,y,z = maximum({1,2,4,3})
print(x,y,z) --函数没有足够多的返回值时，lua会用nil来填充缺失的值

