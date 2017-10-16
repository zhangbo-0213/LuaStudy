--[[
table������C#�еĶ�������������
--]]

mytable={}
print(type(mytable))

mytable[1]="Lua"
mytable["name"]="bobo"

newtable=mytable
print(newtable[1])
--��� Lua

mytable[1]="LuaCode"
print(newtable[1])
--��� LuaCode

newtable[2]="JAVA"
print(mytable[2])
--��� JAVA


--table.xxxmethod
mytable={"Lua","C#","JAVA","C++","C"}

--ƴ�ӣ�����ָ��ƴ�����ӷ�����ʼ�����ͽ���������
print(table.concat(mytable))
print(table.concat(mytable,','))
print(table.concat(mytable,',',2,4))

--�����Ƴ�����
mytable[6]="PHP"
mytable[#mytable+1]="Python"
--���ݲ���,Ĭ�ϲ嵽ĩβ
table.insert(mytable,"JavaScript")
print(mytable[#mytable])
--ָ��λ�ò���
table.insert(mytable,2,"Go")
for k,v in pairs(mytable) do
	print(k,v)
end
--���   Lua Go C# JAVA C++ C PHP Python JavaScript

--�����Ƴ�
table.remove(mytable,2)
for k,v in pairs(mytable) do
	print(k,v)
end
--���   Lua C# JAVA C++ C PHP Python JavaScript

--������ĸ����ASCII���������,��д��ĸ����ǰ��Сд��ĸ���ں�)
print("����ǰ")
for k,v in pairs(mytable) do
	print(k,v)
end
print("�����")
table.sort(mytable)
for k,v in pairs(mytable) do
	print(k,v)
end

mytable2={23,45,678,39,47,482,37,49}
table.sort(mytable2)
for k,v in pairs(mytable2)  do
	print(k,v)
end

--ȡ�����ֵ
function getMax(mytable)
	local temp=0
	for k,v in pairs(mytable) do
		if v>=temp then
			temp=v
		end
	end
	return temp
end

print("���ֵΪ ��"..getMax(mytable2))
