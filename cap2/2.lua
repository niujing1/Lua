
--可以通过resume-yield来交换数据，第一次调用resume时，没有对应的yile在等待它
--所以所有传递给resume的额外参数都将视为协程的主函数参数

co = coroutine.create(
  function(a,b,c)
   print("co",a,b,c)
  end
)

coroutine.resume(co,1,2,3)


--在resume调用的返回内容中，第一个值为true表示没错误，后边的所有值都是对应yield的传入参数
co2 = coroutine.create(
  function(a,b)
    coroutine.yield(a+b,a-b)
  end
)

print(coroutine.resume(co2,20,10))


--yield的返回值就是resume传入的参数
co3 = coroutine.create(
  function()
   print("co",coroutine.yield())
  end
)

coroutine.resume(co3)
coroutine.resume(co3,4,5,6)


--当一个协同程序结束时，它的主函数所返回的值都将作为resume的返回值
co4 = coroutine.create(
  function()
    return 6,7
  end
)

print(coroutine.resume(co4))
