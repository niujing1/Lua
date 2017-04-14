--[[
function permgen(a,n)
  n = n or #a  --默认n为a的大小
  if n<=1 then
    printRes(a)
  else
    for i=1,n do
      a[n],a[i] = a[i],a[n] --将第i个元素放到数组末尾
      permgen(a,n-1) --生成其余元素的排列
      a[n],a[i] = a[i],a[n]  --恢复第i个元素
    end --end else
  end  --end if
end  --end function
--]]

function printRes(a)
  for i=1,#a do
   io.write(a[i]," ")
  end
   io.write("\n")
end
--[[
permgen({1,2,3})
--]]

--用协同程序来实现
function permgen(a,n)
  n = n or #a  --默认n为a的大小
  if n<=1 then 
    coroutine.yield(a)
  else
    for i=1,n do
      a[n],a[i] = a[i],a[n]
      permgen(a,n-1)
      a[n],a[i] = a[i],a[n]
    end
  end
end

--定义一个工厂函数，用于将生产函数放到一个协同程序中运行，并创建迭代器函数
--迭代器只是简单的唤醒协同程序，让它产生一种新的排列
function permutations(a)
  local co = coroutine.create(function() permgen(a) end)
  print(coroutine.status(co))
  print(co)
  return function() --迭代器
--  print(coroutine.status(co))
    local code,res = coroutine.resume(co)
    return res
  end
end

--permutations({"a","b"})
for p in permutations({"a","b","c"}) do
  printRes(p)
end
