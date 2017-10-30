--[[
Lua�� table����ͨ����Ӧ��key���ʵ�value �����޷�������table���в���
���Lua�ṩԪ��(Metatable),������Ա���Զ����������չ����ͨ��Ĳ���

--Ϊ��ͨ����չԪ��
mytable={"Lua","C#","C","C++"}    --��ͨ��
mymetatable={}                    --Ԫ���ձ�
mytable=setmetatable(mytable,mymetatable)   --��mymetatable���ó�mytable��Ԫ��,������ͨ��
print(mytable[1])                 --���Lua
--��һ�����÷�ʽ
--mytable=setmetatable({},{})     ��ͨ���Ԫ���Ϊ�ձ�

--��ÿձ��Ԫ��

print(getmetatable(mytable))   --���table: 008E9918
print(mymetatable)             --���table: 008E9918

--��Ԫ���д��� __metatable��ֵʱ��ʹ��getmetatable��ֱ�ӷ���__metatable������Ӧ��ֵ������������Ԫ��
--�������Զ�Ԫ����б�������ֹԪ���Ա���޸�


--]]

--Ԫ���е�__index����
--[[
Ԫ���е�__index��Ϊ���⺬���һ�ּ�������������(��Ա�ķ��ʹ���)
1.__index=function __index���һ������������������Ԫ���Ӧ����ͨ���Ԫ�ز�����ʱ�����ø÷���
  �����Ĳ���Ϊtab��key
--]]
mytable={"Lua","C#","Python","C++"}    --��ͨ��
mymetatable={
__index=function (tab,key)
	return "C"
end
}
mytable=setmetatable(mytable,mymetatable)

print(mytable[7])     --���C

--[[
2.__index={}�__index����Ը�һ����������Ԫ���Ӧ����ͨ������ʱ���ͻ���__index��ı���Ѱ�ң����__index������Ǳ�
--]]
mytable2={"LUA","C#","Python","C++"}
newtable={}
newtable[6]="Go"
newtable[7]="JavaScript"
metatable2={
	__index=newtable
}
mytable2=setmetatable(mytable2,metatable2)

print(mytable2[7])     --���Javascript


--Ԫ���е�__newindex����
--[[
Ԫ���е�__newindex��Ҫ��Ա����������ֵ���̣�������Ը�һ������������һ����
1.__newindex=function (tab,key,value)   __newindex�����������
--]]
mytable3={"Lua","C#","Python","Go"}
metatable3={
	__newindex=function (tab,key,value)   --����Ӧ��ͨ�����������ֵʱ����ø÷���
	print("��ֵ���̣�"..key..":"..value)
	rawset(tab,key,value)    --���Ҫ��ɶ�Ӧ������ֵ��Ԫ������Ҫ���øú���
	end
}
mytable3=setmetatable(mytable3,metatable3)

mytable3[1]="C++"
mytable3[5]="C"        --��� ��ֵ���̣�5��C  ֻ���������
print(mytable3[5])     --��� C

--[[
2.Ԫ���е�__newindex���һ����Ԫ���Ӧ����ͨ������Ԫ�ػ����__newindex����ı���
--]]

mytable4={"Lua","C#","Python","Go"}
newtable2={}
metatable4={
	__newindex=newtable2
}
mytable4=setmetatable(mytable4,metatable4)

mytable4[5]="C++"
print(mytable4[5])          --���nil
print(newtable2[5])         --���C++

--������Ӳ�����[__add��Ӧ ��������ӵĲ���]
mytable5={"Lua","C#","Python","Go"}
newtable5={"PHP","Java"}
mymetatable5={
__add=function(tab,newtab)
	local length=#tab
	for k,v in pairs(newtab) do
		tab[length+k]=v
	end
	return tab
end
}
mytable5=setmetatable(mytable5,mymetatable5)
v1=newtable5+mytable5

for k,v in pairs(v1) do
	print(k,v)
end
--������ʹ��+��������ֻҪ����һ�����Ԫ������__add��Ԫ�����Ϳ��Խ�����Ӳ���

--__CallԪ���������Խ�����Ϊ����ʹ��
mytable6={"Lua","C#","Python","Go"}
mymetatable6={
__call=function(tab,arg)
	print(arg)
	return arg
end
}
mytable6=setmetatable(mytable6,mymetatable6)
print(mytable6("Java"))
--[[���
Java   --__call�������һ��
Java
--]]


