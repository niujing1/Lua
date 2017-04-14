
a = {}

for i = 1,4 do
a[i] = io.read()
end

for i=1,#a do
  print(a[i])
end

a[#a+1] = "test"
print(#a)
print(a[#a])
