--define a function

function fact(n)
    if n==0 then
       return 1
    else
       return n*fact(n-1)
    end --if end
end  -- funtion end

print("enter a number:")
a = io.read("*number")
print(fact(a))


