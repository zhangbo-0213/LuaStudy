--[[

1.whileѭ��
2.forѭ��
3.repeatѭ��   ��do while��


1.whileѭ��

while(condition) do
	statements
end

2.forѭ��
2.1 ��ֵforѭ��

	for var=start,end,step do
		statements
	end
2.2 ����forѭ��


3.repeatѭ��

	repeat
		statement
	until(condition)
--]]


a=1
while (a<=20) do
	if (a%2==1) then
		print(a)
	end
	a=a+1
end

for var=1,10,2 do
	print(var)
end

for var=20,10,-1 do
	print(var)
	var=var-1
end

tab1={key1="value1",key2="value2"}
for k,v in pairs(tab1) do
	print(k.."&"..v)
end

tab2={"һ","��","��","��"}
for k,v in pairs(tab2) do
	print(k,v)
end

repeat
	print(a)
	a=a-2
until(a<=0)

--ѭ��Ƕ��
for var=1,10,1 do
	for var1=1,var,1 do
		print(var)
	end
end
