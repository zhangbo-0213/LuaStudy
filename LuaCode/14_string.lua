--[[
�ַ���
1.����
--''  ""  [ [ ] ]�����ַ�������

2.ת���ַ�
\n  ����
\r  �س�
\\  \

--]]
 --print("hello\n\\world")

 --print("my name is \"Micheal\"")


 --�ַ�������
 str="My Name Is bobo"
 str2=string.upper(str)   --��ԭ�ַ���û��Ӱ��
 str3=string.lower(str)

print(str2)
print(str3)

--�ַ����滻
str4=string.gsub(str,'b','Z',1)  --��������ֱ�ʾ�����滻��������
print(str4)

--�ַ�������
index=string.find(str,"bobo",10)  --���ز����ַ���������ֵ�����Ĳ�����ʾ��ʼ���ҵ���ʼλ��s
print(index)
