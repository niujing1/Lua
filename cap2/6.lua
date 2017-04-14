
--顺序方式下载

function download(host,file)
  local c = assert(socket.connect(host,80))
  print(c)
  local count = 0   --记录接收到的字节数
  c:send("GET "..file.." HRRP/1.0\r\n\r\n")
  while true do
    local s,status,partial = receive(c)
    count = count + #(s or partial)
    if status == "closed" then break end
  end
  c:close()
  print(file,count)
end

--顺序下载
--[[
function receive(connection)
  return connection:receive(2^10)
end
--]]

--使receive不会阻塞
function receive(conn)
  conn:settimeout(0)
  local s,status,partial = conn:receive(2^10)
  if status == "timeout" then
    coroutine.yield(conn)
  end
  return s or partial,status
end
