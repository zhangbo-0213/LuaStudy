--[[

	if(condition) then
		statements
	else if
		statements
	else
		statements
	end

--]]


if(0) then
	print(0)
end
--这里需要注意的是，条件判断时，nil为false，其他确定类型则为true
--0 类型为number 因此条件判断结果为true  输出0

a=10
if a>10 then
	print(a)
else
	print(a.."<=10")
end
--输出 10<=10

if a>10 then
	print("a>10")
elseif a<10  then   --elseif中间无空格  后接then
	print("a<10")
else
	print("a=10")
end
--输出a=10
