
a = "hello".."world"
x = 3
a,b = 10, 2*x  --lua 允许多赋值

print(a); --结尾的分号可以要或者不要
print(b)

a,b,c = 0,1
print(a,b,c) --左边的比较多的时候，未被赋值的自动变成nil

a,b = a+1 , b+1 ,b+2 --b+2会被自动忽略
print(a,b)

a,b = 1,2,3 --左后一个值会被自动忽略
print(a,b)




