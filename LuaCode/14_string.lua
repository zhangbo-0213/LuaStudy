--[[
字符串
1.定义
--''  ""  [ [ ] ]多行字符串定义

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
index=string.find(str,"bobo",10)  --返回查找字符串的索引值，最后的参数表示开始查找的起始位置
print(index)

--字符串翻转
str5=string.reverse(str)
print(str5)

--格式化字符串
num1=5
num2=10
str6=string.format("加法运算： %d+%d=%d",num1,num2,(num1+num2))
print(str6)

date=2;month=1;year=2017
print(string.format("日期格式化: %02d/%02d/%04d",date,month,year))

--字符与整数之间转换
print(string.char(97,98,99,100))
--输出abcd
print(string.byte('ABCD'))
--输出65
print(string.byte('ABCD',2))    --默认从第一个字符输出,也可以指定位置
--输出66

--取得字符串长度
length=string.len('abc')
length2=#'abc'
print(length,length2)
--输出  3  3

--字符串拷贝
str7=string.rep('abcd',2)
print(str7)
--输出abcdabcd
