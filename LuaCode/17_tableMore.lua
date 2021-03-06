--[[
table类似于C#中的对象，是引用类型
--]]

mytable={}
print(type(mytable))

mytable[1]="Lua"
mytable["name"]="bobo"

newtable=mytable
print(newtable[1])
--输出 Lua

mytable[1]="LuaCode"
print(newtable[1])
--输出 LuaCode

newtable[2]="JAVA"
print(mytable[2])
--输出 JAVA


--table.xxxmethod
mytable={"Lua","C#","JAVA","C++","C"}

--拼接（可以指定拼接连接符，开始索引和结束索引）
print(table.concat(mytable))
print(table.concat(mytable,','))
print(table.concat(mytable,',',2,4))

--插入移除数据
mytable[6]="PHP"
mytable[#mytable+1]="Python"
--数据插入,默认插到末尾
table.insert(mytable,"JavaScript")
print(mytable[#mytable])
--指定位置插入
table.insert(mytable,2,"Go")
for k,v in pairs(mytable) do
	print(k,v)
end
--输出   Lua Go C# JAVA C++ C PHP Python JavaScript

--数据移除
table.remove(mytable,2)
for k,v in pairs(mytable) do
	print(k,v)
end
--输出   Lua C# JAVA C++ C PHP Python JavaScript

--排序（字母按照ASCII码进行排序,大写字母排在前，小写字母排在后)
print("排序前")
for k,v in pairs(mytable) do
	print(k,v)
end
print("排序后")
table.sort(mytable)
for k,v in pairs(mytable) do
	print(k,v)
end

mytable2={23,45,678,39,47,482,37,49}
table.sort(mytable2)
for k,v in pairs(mytable2)  do
	print(k,v)
end

--取得最大值
function getMax(mytable)
	local temp=0
	for k,v in pairs(mytable) do
		if v>=temp then
			temp=v
		end
	end
	return temp
end

print("最大值为 ："..getMax(mytable2))
