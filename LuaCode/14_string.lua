--[[
×Ö·û´®
1.¶¨Òå
--''  ""  [ [ ] ]¶àĞĞ×Ö·û´®¶¨Òå¡

2.×ªÒå×Ö·û
\n  »»ĞĞ
\r  »Ø³µ
\\  \

--]]
 --print("hello\n\\world")

 --print("my name is \"Micheal\"")


 --×Ö·û´®²Ù×÷
 str="My Name Is bobo"
 str2=string.upper(str)   --¶ÔÔ­×Ö·û´®Ã»ÓĞÓ°Ïì
 str3=string.lower(str)

print(str2)
print(str3)

--×Ö·û´®Ìæ»»
str4=string.gsub(str,'b','Z',1)  --ºóÃæµÄÊı×Ö±íÊ¾¿ÉÒÔÌæ»»µÄ×î¶à´ÎÊı
print(str4)

--×Ö·û´®²éÕÒ
index=string.find(str,"bobo",10)  --·µ»Ø²éÕÒ×Ö·û´®µÄË÷ÒıÖµ£¬×îºóµÄ²ÎÊı±íÊ¾¿ªÊ¼²éÕÒµÄÆğÊ¼Î»ÖÃs
print(index)
