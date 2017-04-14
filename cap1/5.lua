a = {}
a["x"] = 10
b = a  --b and a has the same preference
print(b["x"])
b["x"] = 20  -- a will change
print(a["x"])
a = nil -- a not use table
b = nil -- b not use ,table will be release
print(a)
