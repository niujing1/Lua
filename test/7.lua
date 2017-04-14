

local t = {}
t.a = 1
t.b = 2

local x = "hello test"
print(#x)

--tonumber() -- trans to num
-- type() --get var table
--tostring -- trans to string
--format --get string in specil format
print("")
 
t.a = nil --delete a in t

for k,v in pairs(t) do
  print(k,v)
end

print(#t)  --see table length
