--[[
Lua����������ʵ����ͨ������ʵ��
table+function
table��Lua������������
����һ��������˵ ӵ�� ����+����
--]]

--һ���򵥵��������ʵ��
person={name="bobo",age=24}
person.eat=function()
	print(person.name.."�ڳԷ�")
end

person.eat()

--��ǰ������������һ�������⣬���粢�������ʵ����
--���⻹��һ������
--[[
a=person
person=nil
a.eat()   --��ʱ�ᱨ����Ϊ eat ���������õ��� person �������������eat�����ﴫ��self,��������Ϊ����
--]]

person2={name="bobo2",age=24}
person2.eat=function(self)
	print(self.name.."�ڳԷ�")
end

b=person2
person2=nil
b.eat(b)

--Ҳ����ͨ���޸ķ����Ķ��壬��.��Ϊ: ���ô���self����,�����ڲ�����ʹ��self��������ʾ���ø÷���������
--���������ĸ��������
person3={name="bobo3",age=24}
function person3:eat()
	print(self.name.."�ڳԷ�")
end

c=person3
person3=nil
c.name="bobo4"
c:eat() --��� bobo4�ڳԷ�
--���õ�ʱ��Ҳ����ͨ��.�����õ�����Ҫ�ֶ�����������Ϊ����
c.eat(c)--��� bobo4�ڳԷ�


--����new������Ԫ����ʵ��ʵ��������
Person={name="BOBO",age=25}
function Person:eat()
	print(self.name.."�ڳԷ�")
	print(self.name.."�������ǣ�"..self.age)
end
function Person:new()
	local t={}
	setmetatable(t,{__index=self})
	return t
end
--����ʹ��new��������һ���ձ�t,�ձ�t��Ԫ��__index����ָ������ߣ�������Person�����������,
--��ʹ��new������ɸ�ֵ�󣬵õ���ʵ������һ���ձ�������һ��name ����ʱ����ʱ���ڲ����ڣ��ͻ���Ԫ���е�__index
--��ָ��ı�ȥѰ��
--��Ϊnew������ֵ��ı�������Ϊname �����Ը�ֵ����ȥ���ʣ���ʱ�����Ѵ��ڶ�Ӧ���ԣ��Ͳ������__index�ڵ�������
d=Person:new()
d.eat(d)
--���
--BOBO�ڳԷ�
--BOBO�������ǣ�25
d.name="BOBO2"
d.age=29
d:eat()
--���
--BOBO2�ڳԷ�
--BOBO2�������ǣ�29

--����ͨ��new������Ԫ����ܽ�Person��Ϊһ��ģ�壬ȥʵ�������Person������

--ͨ����new��������һ������Ϊ������ or ����չģ��
Person2={name="BOBO",age=25}
function Person2:eat()
	print(self.name.."�ڳԷ�")
	print(self.name.."�������ǣ�"..self.age)
end
function Person2:new(tab)
	local t=tab or {}    --�����ݹ�����o��һ������ı�ʱ�����������Ļ��������ģ�����ݣ�����ͨ��ģ��������һ���µĶ��󣬴���nil
	setmetatable(t,{__index=self})
	return t
end

e1=Person2:new({weight=130})
print(e1.weight)
e2=Person2:new(nil)
e2:eat()
--���
--130
--BOBO�ڳԷ�
--BOBO�������ǣ�25


--ͨ�����ر���ʵ�ּ̳�
Person3={name="BOBO3",age=27}
function Person3:ptf()
	print("������"..self.name.."---���䣺"..self.age)
end
function Person3:new(o)
	local t=o or {}
	setmetatable(t,self)
	self.__index=self
	return t
end

Student=Person3:new({grade=1})    --����Student��Ԫ����Person3
student=Student:new()             --student��Ԫ����Student������γɼ̳й�ϵ
student:ptf()
print("�����꼶:"..student.grade)
--���
--������BOBO3---���䣺27
--�����꼶:1
