a = {}  -- create a new table

-- create 4 items

for i=1,4,1 do
  a[i] = 2 * i
end

print(a[3])

a["x"] = 10
print(a["x"]) -- we can index it use string
