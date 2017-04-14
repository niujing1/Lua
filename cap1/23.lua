
function newCounter()
local i = 0
  return function() --匿名函数
    i = i+1
  return i
  end
end


--lua会以闭包的概念来处理匿名函数，
--也就是一个closure就是一个函数加上它所需要的变量
c1 = newCounter() 
print(c1())
print(c1())

c2 = newCounter()
print(c2())
print(c1())
print(c2())
