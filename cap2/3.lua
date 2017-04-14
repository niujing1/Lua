--协同的示例  生产者-消费者

--receive唤醒生产者的执行，促使其产生一个新值  send产生一个新值，返还给消费者
--[[
function producer()
  while true do
    local x = io.read() --产生新的值
    send(x)             --发送给消费者
  end
end
--]]

function consumer()
  while true do
   local x = receive()  --从生产者接收值
   io.write(x,"\n")     --消费新的值
  end
end


--程序通过消费者来启动，当它需要一个新的值时，就去唤醒生产者，生产者返回一个新的值后停止，
--等待下次被消费者唤醒
function receive()
  local status,value = coroutine.resume(producer)
  return value
end

function send(x)
  coroutine.yield(x)
end

producer = coroutine.create(
    function ()
     while true do
       local x=io.read()  --产生新的值
       send(x)
     end
   end
  )

consumer(producer)
