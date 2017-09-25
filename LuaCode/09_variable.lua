a=5
print(type(a))
a="hello"
print(type(a))


local b=20
print(b)

function test()
	c=30
	local d=40
end

test()
print(c)
print(d)

a1,a2,a3,a4=13,25,"hello"
print(a1,a2,a3,a4)

a1,a2=a2,a1
print(a1,a2)

function test()
		return 10,20
end

b1,b2=test()
print(b1,b2)
