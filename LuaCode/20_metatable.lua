--[[
Lua中 table可以通过对应的key访问到value ，但无法对两个table进行操作
因此Lua提供元表(Metatable),允许定义对表的自定义操作，扩展对普通表的操作

--为普通表扩展元表
mytable={"Lua","C#","C","C++"}    --普通表
mymetatable={}                    --元表（空表）
mytable=setmetatable(mytable,mymetatable)   --将mymetatable设置成mytable的元表,返回普通表
print(mytable[1])                 --输出Lua
--另一种设置方式
--mytable=setmetatable({},{})     普通表和元表均为空表

--获得空表的元表

print(getmetatable(mytable))   --输出table: 008E9918
print(mymetatable)             --输出table: 008E9918

--当元表中存在 __metatable键值时，使用getmetatable，直接返回__metatable键所对应的值，而不是整个元表
--这样可以对元表进行保护，防止元表成员被修改


--]]

--元表中的__index作用
--[[
元表中的__index作为特殊含义的一种键，有两个作用(针对表的访问过程)
1.__index=function __index后跟一个匿名函数，当访问元表对应的普通表的元素不存在时，调用该方法
  方法的参数为tab和key
--]]
mytable={"Lua","C#","Python","C++"}    --普通表
mymetatable={
__index=function (tab,key)
	return "C"
end
}
mytable=setmetatable(mytable,mymetatable)

print(mytable[7])     --输出C

--[[
2.__index={}_index后可以跟一个表，当访问元表对应的普通表不存在时，就会在__index后的表中寻找（如果__index后跟的是表）
--]]
mytable2={"LUA","C#","Python","C++"}
newtable={}
newtable[6]="Go"
newtable[7]="JavaScript"
metatable2={
	__index=newtable
}
mytable2=setmetatable(mytable2,metatable2)

print(mytable2[7])     --输出Javascript


--元表中的__newindex作用
--[[
元表中的__newindex主要针对表的新索引赋值过程，后面可以跟一个匿名函数和一个表
1.__newindex=function (tab,key,value)   __newindex后跟匿名函数
--]]
mytable3={"Lua","C#","Python","Go"}
metatable3={
	__newindex=function (tab,key,value)   --当对应普通表的新索引赋值时会调用该方法
	print("赋值过程："..key..":"..value)
	rawset(tab,key,value)    --如果要完成对应新增赋值到元表，则需要调用该函数
	end
}
mytable3=setmetatable(mytable3,metatable3)

mytable3[1]="C++"
mytable3[5]="C"        --输出 赋值过程：5：C  只针对新索引
print(mytable3[5])     --输出 C

--[[
2.元表中的__newindex后跟一个表，元表对应的普通表新增元素会放入__newindex后跟的表内
--]]

mytable4={"Lua","C#","Python","Go"}
newtable2={}
metatable4={
	__newindex=newtable2
}
mytable4=setmetatable(mytable4,metatable4)

mytable4[5]="C++"
print(mytable4[5])          --输出nil
print(newtable2[5])         --输出C++

--给表添加操作符[__add对应 两个表相加的操作]
mytable5={"Lua","C#","Python","Go"}
newtable5={"PHP","Java"}
mymetatable5={
__add=function(tab,newtab)
	local length=#tab
	for k,v in pairs(newtab) do
		tab[length+k]=v
	end
	return tab
end
}
mytable5=setmetatable(mytable5,mymetatable5)
v1=newtable5+mytable5

for k,v in pairs(v1) do
	print(k,v)
end
--两个表使用+操作符，只要其中一个表的元表定义了__add的元方法就可以进行相加操作

--__Call元方法，可以将表作为函数使用
mytable6={"Lua","C#","Python","Go"}
mymetatable6={
__call=function(tab,arg)
	print(arg)
	return arg
end
}
mytable6=setmetatable(mytable6,mymetatable6)
print(mytable6("Java"))
--[[输出
Java   --__call调用输出一次
Java
--]]


