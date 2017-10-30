--[[
协同程序或协同函数是指在调用过程中可以指定挂起和运行的程序或函数数
线程在同一时间可运行多个，由CPU进行调度，而协程在同一时刻只能运行一个，其他的在该时刻会被挂起
--]]


--定义和启动协同程序（函数）

--1.定义一个协同程序 使用 coroutine.create ,会返回一个协同程序
co=coroutine.create(
	function(a,b)
		print(a+b)
	end
)

--2.启动或暂停一个协同程序 使用 coroutine.resume(协同程序名,参数)
coroutine.resume(co,3,4)


--第二种定义和启动协同程序的方式,使用 coroutine.wrap() 启动
co1=coroutine.wrap(
	function (a,b)
		print(a+b)
	end
)
--调用的时候，直接使用协同程序名调用
co1(5,10)


--resume可以启动一个协程，也可以暂停一个正在运行的协程
--调用协程时，内部遇到 yield() 会被挂起，运行协程后外部的代码，当再次使用resume 时，
--可以回到协程内部继续执行 yield() 后面的代码
co2=coroutine.create(
	function(a,b)
		print(a+b)
		coroutine.yield()
		print(a-b)
	end
)

coroutine.resume(co2,20,30)
print("i am Lua")
--输出 ：
--50
--i am Lua
coroutine.resume(co2)
--输出 ：
--50
--i am Lua
-- -10


--得到协同程序的返回值
co3=coroutine.create(
	function(a,b)
		print(a+b)
		print(a-b)
		print(coroutine.status(co3)) --输出running
		print(coroutine.running())   --输出thread: 009E9BA0  (协程的内存地址)
		coroutine.yield()
		return a+b
	end
)
print(coroutine.status(co3))    --输出suspended
res,res1=coroutine.resume(co3,5,10)
print(coroutine.status(co3))    --输出suspended
print(res,res1)
--输出 true nil
--协同函数返回的第一个值为true/false表示该协同函数是否成功启动，
--第二个输出为 nil 是由于还未执行到 return 函数就被挂起了
res3,res4=coroutine.resume(co3)
print(coroutine.status(co3))    --输出dead
print(res3,res4)
--输出true 15
--再次启动后，得到返回值15

--也可将返回值放入 yiled() 内作为参数传递出来，这样在挂起时，外部也能收到返回值
co4=coroutine.create(
	function(a,b)
		print(a+b)
		print(a-b)
		coroutine.yield(a*b)
		return a/b
	end
)
res5,res6=coroutine.resume(co4,7,8)
print(res5,res6)
--输出true  56
