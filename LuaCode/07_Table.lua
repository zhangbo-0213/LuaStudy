 tab1={}  --�ձ� {}������ʽ
 tab2={key1=100,key2="value"}  --��ʼ��һ����
 print(tab2.key1)
 --���100
 print(tab2["key2"])
 --���value

tab3={"apple","pear","orange","grape"}
print(tab3[2])
--���pear

--����һ�����е�ֵ

for key,val in pairs(tab3) do
	print(key..":"..val)
end
--[[���:
1:apple
2:pear
3:orange
4:grape
--]]

--�������ݵ����
tab1.key1="value1"
tab1["key2"]="value2"
tab1[10]=1000
print(tab1["key1"])
--��� value1
print(tab1.key2)
--��� value2
print(tab1[10])
--��� 1000
tab1["key2"]=20
print(tab1.key2)
--���20

tab1.key2=nil
for key,val in pairs(tab1) do
	print(key..":"..val)
end
--[[���
key1:value1
10:1000
--]]
