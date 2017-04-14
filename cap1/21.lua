
local unpack = unpack and unpack or table.unpack --如果使用unpack报错，加上这行代码
print(unpack{10,20,30})

a,b = unpack{10,20,30}
print(a,b)

f = string.find
a = {"hello","el"}
print(f(unpack(a)))


function unpack(t,i)
 i = i or 1
 if(t[i]) then
   return t[i],unpack(t,i+1)
 end
end

print(unpack({1,3,2}))
