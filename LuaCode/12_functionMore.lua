--[[
[local] functionName(arg1,arg2,arg3...)
	functionBody
	[retrun value1,value2,value3...]

--]]

local function max(num1,num2)
	if num1>num2 then
		return num1
	else
		return num2
	end
end

print(max(1,10))

--函数可以作为数据赋值  作为参数传递
temp=max
print(temp(2,5))

myprint=function (param)
	print("这是我的打印函数："..param)
end

myprint(100)

function add(num1,num2,printFunc)
	printFunc(num1+num2)
	end

add(15,20,myprint)

--可变参数
print(20,30,40)
--可变参数函数定义

function test(...)   --通过...符号表明函数接受的是可变参数
	local arg={...}
	print(arg)    --通过arg内置参数访问得到包含了可变参数的table
	print(arg[1])
	res=0

	for k,v in pairs(arg) do
		res=res+v
	end
	print(res)
end

function average(...)
	local arg={...}
	res=0
	for k,v in pairs(arg) do
	res=res+v
	end
	print("average:"..(res/#arg))
end

test(1,2,3,4)
average(1,2,3,4)

