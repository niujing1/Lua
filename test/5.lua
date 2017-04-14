
for i=1,2 do
  print(require("4"))  --we can see twice is same
end

print("-----")

for i=1,2 do
  print(dofile("4.lua")) -- twice is different
end
