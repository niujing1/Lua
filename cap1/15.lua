--局部变量和块

x = 4  --全局变量
local i = 1 --程序块中的局部变量

while i<=x do
   local x = i*2 --while循环中的局部变量
   print(x)
   i = i+1
end

--交互式命令行中可以使用 do end 来禁止lua立即执行一行代码

print(i)
if i>4  then
   local x
   x = 20
   print(x+2) --若测试成功，会打印22
else
   print(x) --全局变量
end

print(x)
