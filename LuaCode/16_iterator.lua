array={"Lua","C#","JAVA"}
for k,v in pairs(array) do
	print(k,v)
end

array[2]=nil
for k,v in ipairs(array) do
	print(k,v)
end

--pairs����table,�����������е�Ԫ��
--ipairs����������1��ʼ����������������nil��ֹͣ����


--[[
for in ���շ���ֵ�ı����б� ��������,״̬����,���Ʊ��� do
	--ִ����
end
--]]

--1.���õ�������,(�����Ʊ�����״̬������Ϊ���������������)
--2.������������ķ���ֵΪ nil �˳�ѭ��
--  �������ֵ��Ϊnil��������ֵ��ֵ�������б�ִ��ѭ����
--  ״̬�����ڵ�һ�ε���ʱ��ֵ�����Ʊ������ں����ڿ��Ƹ�ֵ�����н�������

function square(state,control)
	if(control>=state) then
		return nil
	else
		control=control+1
		return control,control*control
	end
end

for i,j in square,9,0 do
	print(i,j)
end
