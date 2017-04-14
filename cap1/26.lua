
function room1()
  print("you are now at room1")
  local move = io.read()
  if move == "south" then return room3()
  elseif move == "east" then return room2()
  else
  print("invalid move")
  return room1() --stay in the same room
 end
end 

function room2()
  print "this is room2...."
  local move = io.read()
  if move == "south" then return room4()
  elseif move=="west" then return room1()
  else
   print("Invalid move")
   return room2()
  end
end

function room3()
  print("room3~~")
  local move = io.read() --读取用户输入
  if move=="north" then return room1()
   elseif move=="east" then return room4()
   else
     print("invalid move")
     return room3()
   end
end


function room4()
  print("haha,success...")
  local move = io.read()
  if move == "north" then print("success")
 end
end

room1() --调用room1()开始进入迷宫
