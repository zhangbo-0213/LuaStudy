--[[
Эͬ�����Эͬ������ָ�ڵ��ù����п���ָ����������еĳ��������
�߳���ͬһʱ������ж������CPU���е��ȣ���Э����ͬһʱ��ֻ������һ�����������ڸ�ʱ�̻ᱻ����
--]]


--���������Эͬ���򣨺�����

--1.����һ��Эͬ���� ʹ�� coroutine.create ,�᷵��һ��Эͬ����
co=coroutine.create(
	function(a,b)
		print(a+b)
	end
)

--2.��������ͣһ��Эͬ���� ʹ�� coroutine.resume(Эͬ������,����)
coroutine.resume(co,3,4)


--�ڶ��ֶ��������Эͬ����ķ�ʽ,ʹ�� coroutine.wrap() ����
co1=coroutine.wrap(
	function (a,b)
		print(a+b)
	end
)
--���õ�ʱ��ֱ��ʹ��Эͬ����������
co1(5,10)


--resume��������һ��Э�̣�Ҳ������ͣһ���������е�Э��
--����Э��ʱ���ڲ����� yield() �ᱻ��������Э�̺��ⲿ�Ĵ��룬���ٴ�ʹ��resume ʱ��
--���Իص�Э���ڲ�����ִ�� yield() ����Ĵ���
co2=coroutine.create(
	function(a,b)
		print(a+b)
		coroutine.yield()
		print(a-b)
	end
)

coroutine.resume(co2,20,30)
print("i am Lua")
--��� ��
--50
--i am Lua
coroutine.resume(co2)
--��� ��
--50
--i am Lua
-- -10


--�õ�Эͬ����ķ���ֵ
co3=coroutine.create(
	function(a,b)
		print(a+b)
		print(a-b)
		print(coroutine.status(co3)) --���running
		print(coroutine.running())   --���thread: 009E9BA0  (Э�̵��ڴ��ַ)
		coroutine.yield()
		return a+b
	end
)
print(coroutine.status(co3))    --���suspended
res,res1=coroutine.resume(co3,5,10)
print(coroutine.status(co3))    --���suspended
print(res,res1)
--��� true nil
--Эͬ�������صĵ�һ��ֵΪtrue/false��ʾ��Эͬ�����Ƿ�ɹ�������
--�ڶ������Ϊ nil �����ڻ�δִ�е� return �����ͱ�������
res3,res4=coroutine.resume(co3)
print(coroutine.status(co3))    --���dead
print(res3,res4)
--���true 15
--�ٴ������󣬵õ�����ֵ15

--Ҳ�ɽ�����ֵ���� yiled() ����Ϊ�������ݳ����������ڹ���ʱ���ⲿҲ���յ�����ֵ
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
--���true  56
