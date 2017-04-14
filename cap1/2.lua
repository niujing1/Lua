
function test(n)
  if n==0 then
     return 1
  else
     return n*(n-1)
  end
end

print("enter a number")
a = io.read("*number")
print(test(a))
