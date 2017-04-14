local fact
fact = function(n)
if n == 0 then return 1
  else return n*fact(n-1)
  end
end

print(fact(5))

local x = 2
if x==2 then 
   print(2) 
else 
   print(3)
end 
