--[[
Lua�е�ģ��ͨ������ʵ�֣��������ͺ�����Ϊ��ĳ�Ա
--]]

module1={}
module1.var="bobo"
module1.func1=function ()
	print("����module��һ����������Ӧ��Ϊ func1")
end

local function func3()
	print("�����Ǿֲ�����3")
end
--�ֲ������޷���ģ���ⲿ���е���

function func2()
	print("������ȫ�ֺ���2")
	func3()
end



return module1
