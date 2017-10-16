--[[
Lua中的模块通过表来实现，将变量和函数作为表的成员
--]]

module1={}
module1.var="bobo"
module1.func1=function ()
	print("这是module的一个函数，对应键为 func1")
end

local function func3()
	print("这里是局部函数3")
end
--局部函数无法被模块外部进行调用

function func2()
	print("这里是全局函数2")
	func3()
end



return module1
