array={"lua","code"}

for i=1,2 do
	print(array[i])
end
--���lua code
--Lua������ֵ��1��ʼ

array2={}
for i=-2,2 do
	array[i]=i*3
end
for i=-2,2 do
	print(array[i])
end
--��� -6 -3 0 3 6
--����ͨ����ʵ�֣�����ֵ����Ϊ����

--��ά����
array3={{1,2},{3,4},{5,6},{7,8}}
print(#array3[1])
--���2

--������ά����
for i=1,4 do
	for j=1,2 do
		print(array3[i][j])
	end
end
