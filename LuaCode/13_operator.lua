--[[
运算符 + - * / % ^
--]]
a=10.0
b=20

print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%b)
print(a^b)


--关系运算符 ==  ~=不等于  > < >= <=
if(a~=b)  then
	print("a~=b")
else
	print("a==b")
end

--逻辑运算  and   or not
if(1 and 2)  then
	print("条件为真")
end

print(10>3 and 10<3)
print(10>3 or 10<3)
print(not (10>3))
