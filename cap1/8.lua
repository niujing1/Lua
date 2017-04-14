
local tolerance = 10
function test(angle)
  angle = angle % 360
  return (math.abs(angle-180) < tolerance)
end

print(test(-180))
