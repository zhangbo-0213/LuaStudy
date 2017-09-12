 tab1={}  --空表 {}构造表达式
 tab2={key1=100,key2="value"}  --初始化一个表
 print(tab2.key1)
 --输出100
 print(tab2["key2"])
 --输出value

tab3={"apple","pear","orange","grape"}
print(tab3[2])
--输出pear

--遍历一个表中的值

for key,val in pairs(tab3) do
	print(key..":"..val)
end
--[[输出:
1:apple
2:pear
3:orange
4:grape
--]]

--表中数据的添加
tab1.key1="value1"
tab1["key2"]="value2"
tab1[10]=1000
print(tab1["key1"])
--输出 value1
print(tab1.key2)
--输出 value2
print(tab1[10])
--输出 1000
tab1["key2"]=20
print(tab1.key2)
--输出20

tab1.key2=nil
for key,val in pairs(tab1) do
	print(key..":"..val)
end
--[[输出
key1:value1
10:1000
--]]
