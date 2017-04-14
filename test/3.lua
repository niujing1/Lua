
a = {
  ['test'] = 'test',
  ["foo"] = 1,
  [100] = true
}

for k,v in pairs(a) do
   print(k,v)
   print(v)
end
