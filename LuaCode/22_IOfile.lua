--[[
文件操作
--]]

--简单模式下的文件读取
file=io.open("data.txt","r")    --传递的参数("文件名或路径"，“对文件的模式”)
io.input(file)                  --将文件放入处理池内

print(io.read())                --读取池内的函数，单行读取
print(io.read())                --单行读取

io.close(file)                  --文件操作完成后关闭，解除占用


--io.read() 参数
--io.read("*l")   默认参数，读取一行，文件末尾处返回nil
--io.read("*n")   返回数字文件中的数字
--io.read("*a")   从当前位置读取到文件末尾处
--io.read(number)  从当前位置，返回number数字长度的字符串

file=io.open("data.txt","r")
io.input(file)
--print(io.read("*n"))
--print(io.read("*a"))
print(io.read(20))
io.close(file)


--完全模式下的文件操作
--当在同一时间下处理多个文件时，需要使用file：function_name来代替io.function_name方法
file=io.open("data.txt","r")
print(file:read())
print(file:read())
file:close()

file2=io.open("data.txt","a")
file2:write("武汉2017年平均月工资 6992")
file2:close()
