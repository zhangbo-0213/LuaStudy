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
