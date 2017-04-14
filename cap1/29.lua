
--loadfile不会引发错误  dofile会

function dofile(filename)
  local f = assert(loadfile(filename))
  return f
end
 
--print(dofile("test.txt"))
print(loadfile("test.txt"))
