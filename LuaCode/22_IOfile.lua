--[[
�ļ�����
--]]

--��ģʽ�µ��ļ���ȡ
file=io.open("data.txt","r")    --���ݵĲ���("�ļ�����·��"�������ļ���ģʽ��)
io.input(file)                  --���ļ����봦�����

print(io.read())                --��ȡ���ڵĺ��������ж�ȡ
print(io.read())                --���ж�ȡ

io.close(file)                  --�ļ�������ɺ�رգ����ռ��


--io.read() ����
--io.read("*l")   Ĭ�ϲ�������ȡһ�У��ļ�ĩβ������nil
--io.read("*n")   ���������ļ��е�����
--io.read("*a")   �ӵ�ǰλ�ö�ȡ���ļ�ĩβ��
--io.read(number)  �ӵ�ǰλ�ã�����number���ֳ��ȵ��ַ���

file=io.open("data.txt","r")
io.input(file)
--print(io.read("*n"))
--print(io.read("*a"))
print(io.read(20))
io.close(file)


--��ȫģʽ�µ��ļ�����
--����ͬһʱ���´������ļ�ʱ����Ҫʹ��file��function_name������io.function_name����
file=io.open("data.txt","r")
print(file:read())
print(file:read())
file:close()

file2=io.open("data.txt","a")
file2:write("�人2017��ƽ���¹��� 6992")
file2:close()
