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
--������Ҫע����ǣ������ж�ʱ��nilΪfalse������ȷ��������Ϊtrue
--0 ����Ϊnumber ��������жϽ��Ϊtrue  ���0

a=10
if a>10 then
	print(a)
else
	print(a.."<=10")
end
--��� 10<=10

if a>10 then
	print("a>10")
elseif a<10  then   --elseif�м��޿ո�  ���then
	print("a<10")
else
	print("a=10")
end
--���a=10
