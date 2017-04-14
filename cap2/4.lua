
--在生产者和消费者之间做过滤器

function receive(prod)
  local status,value = coroutine.resume(prod)
  return value
end

function send(x)
  coroutine.yield(x)
end

function producer()
  return coroutine.create(
    function()
     while true do
      local x = io.read() --产生一个新的值
      send(x)             --把值当给消费者
     end
    end
  )
end

function filter(prod)
  return coroutine.create(function()
    for line = 1,math.huge do
      local x=receive(prod)    --获取一个新的值
      x = string.format("%5d%s",line,x)
      send(x)                  --将产生的新值发送给消费者
    end
  end
  )
end

function consumer(prod)
  while true do
    local x = receive(prod)  --获取新的值
    io.write(x,"\n")         --消费新的值
  end
end

--创建运行代码
p = producer()
f = filter(p)
consumer(f)
