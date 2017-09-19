--[[
int fact(int n){
	if(n==1)
		retrun n;
	else
		return n*fact(n-1)
}

--]]

--[[   函数的定义和调用
function fact(n)
	if (n==1) then
		return n
	else
		return n*fact(n-1)
	end
end

print(fact(5))

fact2=fact
print(fact2(3))
--]]

---[[函数作为参数传递及匿名函数的使用
function func(tab,fun)
	for k,v in pairs(tab) do
		fun(k,v)
	end
end

tab1={key1="value1",key2="value2"}

function f1(k,v)
	print(k..":"..v)
end

function f2(k,v)
	print(k.."&"..v)
end

func(tab1,f1)
func(tab1,f2)


func(tab1, function(k,v)
				print(k.."--"..v)
			end
)
--]]
