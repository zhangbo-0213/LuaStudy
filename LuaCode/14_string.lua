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
index=string.find(str,"bobo",10)  --���ز����ַ���������ֵ�����Ĳ�����ʾ��ʼ���ҵ���ʼλ��
print(index)

--�ַ�����ת
str5=string.reverse(str)
print(str5)

--��ʽ���ַ���
num1=5
num2=10
str6=string.format("�ӷ����㣺 %d+%d=%d",num1,num2,(num1+num2))
print(str6)

date=2;month=1;year=2017
print(string.format("���ڸ�ʽ��: %02d/%02d/%04d",date,month,year))

--�ַ�������֮��ת��
print(string.char(97,98,99,100))
--���abcd
print(string.byte('ABCD'))
--���65
print(string.byte('ABCD',2))    --Ĭ�ϴӵ�һ���ַ����,Ҳ����ָ��λ��
--���66

--ȡ���ַ�������
length=string.len('abc')
length2=#'abc'
print(length,length2)
--���  3  3

--�ַ�������
str7=string.rep('abcd',2)
print(str7)
--���abcdabcd
