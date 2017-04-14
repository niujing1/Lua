--协程
--4种状态  挂起  运行  死亡 正常

co = coroutine.create(function() print("hi") end)
print(co)

--可以使用coroutine.status(co)来检查协同程序的状态

print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co)) --这里程序比较简单，输出hi之后就会终止，处于死亡状态

co = coroutine.create(function()
  for i=1,4 do
   print("co",i)
   coroutine.yield()
  end
end
)

--当唤醒程序后，就会开始执行，直到遇到第一个yield
coroutine.resume(co) --co 1
--此时检查现场的状态，会发现是挂起状态
print(coroutine.status(co))
--程序挂起时发生的活动都在yield调用中，当恢复协同程序的执行时，yield调用才返回
--然后继续执行，直到遇到下一个yield或者执行结束

coroutine.resume(co)
coroutine.resume(co)
print(coroutine.resume(co))
coroutine.resume(co)
assert(coroutine.resume(co),"thread has dead")


