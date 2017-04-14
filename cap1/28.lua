--一个遍历当前输入文件的所有单词的迭代器

function allwords()
  local line = io.read() --当前行
  local pos = 1 --当前行中的位置
  return function () --迭代器函数
    while line do   --若为有效的行内容就进入循环
    local s,e = string.find(line,"%w+",pos)
     if s then   --是否找到一个单词
       pos = e + 1 --该单词的下一个位置
       return string.sub(line,s,e)  --返回该单词
     else
       line = io.read() --没有找到单词，尝试下一行
       pos = 1
       end
     end
     return nil --没有其余行了，遍历结束
   end
end

for word in allwords() do
  print(word)
end
