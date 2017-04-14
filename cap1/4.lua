#!/usr/bin/env 

a = {}    --创建一个table，并将它的引用存储到a
k="x"     
a[k] = 10 --new item key=x val=10
print(a[k])
a[20] = "great" --new item

print(a["x"])

k = 20
print(a[k])

a["x"] = a["x"] + 1  -- add item
print(a["x"])
