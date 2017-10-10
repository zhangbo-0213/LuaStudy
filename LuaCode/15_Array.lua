array={"lua","code"}

for i=1,2 do
	print(array[i])
end
--输出lua code
--Lua中索引值从1开始

array2={}
for i=-2,2 do
	array[i]=i*3
end
for i=-2,2 do
	print(array[i])
end
--输出 -6 -3 0 3 6
--数组通过表实现，索引值可以为负数

--多维数组
array3={{1,2},{3,4},{5,6},{7,8}}
print(#array3[1])
--输出2

--遍历多维数组
for i=1,4 do
	for j=1,2 do
		print(array3[i][j])
	end
end
