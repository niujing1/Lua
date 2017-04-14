
--函数是第一类值，可以作为table的元素存在

Lib = {}
Lib.foo = function(x,y) return x+y end
Lib.goo = function(x,y) return x-y end

print(Lib.foo(3,2))
print(Lib.goo(3,2))

Lib2 = {
 foo = function(x,y) return x+y end,
 goo = function(x,y) return x-y end
}

print(Lib2.foo(4,1))
print(Lib2.goo(4,1))
