array={"Lua","C#","JAVA"}
for k,v in pairs(array) do
	print(k,v)
end

array[2]=nil
for k,v in ipairs(array) do
	print(k,v)
end

--pairs迭代table,遍历表中所有的元素
--ipairs按照索引从1开始，连续遍历，遇到nil会停止遍历


--[[
for in 接收返回值的变量列表 迭代函数,状态变量,控制变量 do
	--执行体
end
--]]

--1.调用迭代函数,(将控制变量和状态变量作为参数传入迭代函数)
--2.如果迭代函数的返回值为 nil 退出循环
--  如果返回值不为nil，将返回值赋值给变量列表，执行循环体
--  状态变量在第一次调用时赋值，控制变量则在函数内控制赋值，并有结束条件

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
