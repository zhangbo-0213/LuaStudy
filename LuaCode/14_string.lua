--[[
字符串
1.定义
--''  ""  [ [ ] ]多行字符串定义�

2.转义字符
\n  换行
\r  回车
\\  \

--]]
 --print("hello\n\\world")

 --print("my name is \"Micheal\"")


 --字符串操作
 str="My Name Is bobo"
 str2=string.upper(str)   --对原字符串没有影响
 str3=string.lower(str)

print(str2)
print(str3)

--字符串替换
str4=string.gsub(str,'b','Z',1)  --后面的数字表示可以替换的最多次数
print(str4)

--字符串查找
index=string.find(str,"bobo",10)  --返回查找字符串的索引值，最后的参数表示开始查找的起始位置s
print(index)
