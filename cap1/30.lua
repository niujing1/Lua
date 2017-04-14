
--调用error函数 并传入一个代表错误消息的参数

--[[print "enter a number:"
n = io.read("*number")
if not n then error("invalid input") end
--]]

--[[print "enter a number:"
n = assert(io.read("*number"),"invalid input")
--]]

--local status,err = pcall(function() error({code=121}) end )
--[[local status,err = pcall(function() print("test") end)
print(err.code)

print(status,err)
--]]


--print(debug.debug())
print(debug.traceback)
