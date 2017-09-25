--[[

1.while循环
2.for循环
3.repeat循环   （do while）


1.while循环

while(condition) do
	statements
end

2.for循环
2.1 数值for循环

	for var=start,end,step do
		statements
	end
2.2 泛型for循环


3.repeat循环

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

tab2={"一","二","三","四"}
for k,v in pairs(tab2) do
	print(k,v)
end

repeat
	print(a)
	a=a-2
until(a<=0)

--循环嵌套
for var=1,10,1 do
	for var1=1,var,1 do
		print(var)
	end
end
