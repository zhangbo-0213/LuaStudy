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

--����������Ϊ���ݸ�ֵ  ��Ϊ��������
temp=max
print(temp(2,5))

myprint=function (param)
	print("�����ҵĴ�ӡ������"..param)
end

myprint(100)

function add(num1,num2,printFunc)
	printFunc(num1+num2)
	end

add(15,20,myprint)

--�ɱ����
print(20,30,40)
--�ɱ������������

function test(...)   --ͨ��...���ű����������ܵ��ǿɱ����
	local arg={...}
	print(arg)    --ͨ��arg���ò������ʵõ������˿ɱ������table
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

